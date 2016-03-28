package com.intelligrape.linksharing

import Enums.Visibility
import LinkSharing.ResourceSearchCO
import LinkSharing.TopicVO
import grails.transaction.Transactional

@Transactional
class ResourceService {

    Boolean deleteResource(long id) {
        def resource = Resource.get(id)
        if (resource == null) {
            return false
        } else {
            resource.delete(flush: true)
            return true

        }
    }

    Boolean saveLinkResource(String email, String url, String description, String topicname) {
        Resource resource = new LinkResource(topic: Topic.findByName(topicname), createdBy: User.findByEmail(email), description: description, url: url)
        if (resource.validate()) {
            Thread.sleep(500)
            resource.save(flush: true)
            ResourceService.addToReadingItems(resource)
            return true
        } else
            return false;
    }

    Map fetchSearchData(ResourceSearchCO co, User user) {

        co.visibility = Visibility.PUBLIC.toString()
        List<Resource> resources = Resource.search(co).list()
        List<Resource> readResources = ReadingItem.findAllByUserAndIsRead(user, true)*.resource.intersect(resources)
        List<Topic> subscriptionList = Subscription.findAllByUser(user)*.topic.intersect(resources.topic.unique())
        Map map = [subscriptionList: subscriptionList, readResources: readResources, resources: resources]
        return map
    }
    ResourceRating saveRating(long id, int score, String email) {
        ResourceRating resource_rating;
        resource_rating = ResourceRating.findByResourceAndUser(Resource.get(id),User.findByEmail(email))
        if (!resource_rating)
            resource_rating = new ResourceRating(resource: Resource.get(id), score: score, user:User.findByEmail(email)).save(flush: true)
        else {
            resource_rating.score = score
            resource_rating.save(flush: true)
        }
        return resource_rating
    }

    Map fetchTopPostData(String time) {

        List<TopicVO> topposts;
        if (time == "Today")
            topposts = Resource.getToppost()
        else {
            Date currentDate = new Date()
            if (time == "Yesterday") {
                topposts = Resource.getToppost(currentDate, currentDate - 1)

            } else if (time == "Week Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 7)
            } else if (time == "Month Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 29)
            } else if (time == "Year Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 365)
            }
        }
        List userId = topposts?.createdBy?.id
        Map map = [userId: userId, topposts: topposts]
        return map
    }

    Map fetchShowData(long id, User user) {
        ResourceRating resource_rating = ResourceRating.findByResourceAndUser(Resource.get(id), user);
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        int score;
        if (!resource_rating?.score) {
            resource_rating = new ResourceRating(resource: Resource.get(id), user: user, score: 2)
            resource_rating.save(flush: true)
            score = 2;
        } else
            score = resource_rating?.score
        List<TopicVO> trendingTopics = Topic.getTrendingTopics()
        Map map = [trendingTopicsList: trendingTopics, score: score, resource: resource_rating?.resource, totalSubscription: totalResourceAndSubscription.totalSubscription, totalTopics: totalResourceAndSubscription.totalTopic, totalPost: totalResourceAndSubscription.totalPost, SubscribedTopicList: User.getSubscribedTopic(user.email)]

        return map
    }
}
