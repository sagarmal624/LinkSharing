package com.intelligrape.linksharing

import Enums.Visibility
import LinkSharing.Custombean
import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCO
import LinkSharing.TopicVO
import org.codehaus.groovy.grails.compiler.injection.GrailsASTUtils
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.multipart.MultipartFile

class ResourceController extends UtilController {
    ResourceService resourceService

    def update(long id, String url, String description) {
        Resource resource = Resource.get(id)
        if (url) {
            resource.url = url;
            resource.description = description;
            if (resource.save(flush: true))
                flash.message = "Record is Updated"
            else
                flash.message = "Record is not updated"
        } else {
            MultipartFile inputDocument=params.document
            if (inputDocument.originalFilename) {
                String extension = inputDocument.originalFilename.tokenize(".")?.last()
                String filePath = "${grailsApplication.config.documentFolder}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
                File resourceDocument = new File(filePath)
                inputDocument.transferTo(resourceDocument)
                resource.filepath = resourceDocument.absolutePath
            }
            resource.description = description;
            if (resource.save(flush: true)) {
                flash.message = "Record is Updated"
            } else {
                flash.message = "Record is not Updated"
            }

        }

        Map map = [message: flash.message]
        Closure closure = { map }
        renderAsJSON(closure)
    }

    def delete(long id) {

        /*def resource = Resource.get(id)
        println "--------------resource object----->" + resource
        if (resource == null) {
            flash.error = "ResourceNotFound"
        } else {
            resource.delete(flush: true)
        }*/
        boolean status = resourceService.deleteResource(id)
        status ?: (flash.error = "ResourceNotFound")
        forward(action: "dashboard", controller: "linkSharing")
    }

    def search(ResourceSearchCO co) {
        Map map = [:]
        co.visibility = Visibility.PUBLIC.toString()
        List<Resource> resources = Resource.search(co).list()
        List<Resource> readResources = ReadingItem.findAllByUserAndIsRead(session.user, true)*.resource.intersect(resources)
        List<Topic> subscriptionList = Subscription.findAllByUser(session.user)*.topic.intersect(resources.topic.unique())
        map = [resources: resources, userId: resources.createdBy.id, topicsId: resources.topic.id, topics: resources.topic, readResources: readResources, subscriptionList: subscriptionList]
        Closure closure = { map }
        renderAsJSON(closure)
    }

    def RatingProperties(long userid, long resourceid) {
        Resource resource = Resource.get(resourceid)
        RatingInfoVO ratingInfoVO = resource.ratingInfo
        return ratingInfoVO
    }

    def show(long id) {
        Resource_Rating resource_rating = Resource_Rating.findByResourceAndUser(Resource.get(id), session.user);
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(session.user)
        int score;
        if (!resource_rating?.score) {
            resource_rating = new Resource_Rating(resource: Resource.get(id), user: session.user, score: 2)
            resource_rating.save(flush: true)
            score = 2;
        } else
            score = resource_rating?.score

        List<TopicVO> trendingTopics = Topic.getTrendingTopics()
        render view: "/post/post", model: [trendingTopicsList: trendingTopics, score: score, resource: resource_rating?.resource, totalSubscription: totalResourceAndSubscription.totalSubscription, totalTopics: totalResourceAndSubscription.totalTopic, totalPost: totalResourceAndSubscription.totalPost, SubscribedTopicList: User.getSubscribedTopic(session.email)]

    }


//    def saveDocument(String description, String topic) {
//        MultipartFile inputDocument = params.document
//        String extension = inputDocument.originalFilename.tokenize(".")?.last()
//        String filePath = "${grailsApplication.config.documentFolder}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
//        File resourceDocument = new File(filePath)
//        inputDocument.transferTo(resourceDocument)
//        User createdBy = session.user
//        Thread.sleep(300);
//        Resource resource = new Document_Resource(filepath: resourceDocument.absolutePath, description: description, topic: Topic.findByName(topic), createdBy: createdBy)
//        if (resource.validate()) {
//
//            resource.save(flush: true)
//            ResourceController.addToReadingItems(resource)
//            flash.message = "File is Successfully Uploaded"
//        } else {
//            flash.message = "Document is not Uploaded due to Some Error"
//        }
//        Map map = [message: flash.message]
//        groovy.lang.Closure closure = { map }
//        renderAsJSON(closure)
//
//    }

    protected static addToReadingItems(Resource resource) {
        Topic resourceTopic = resource.topic
        List<Subscription> subscribedUser = Topic.getSubscribedUsers(resourceTopic.name)
        subscribedUser.each { user ->
            ReadingItem userReadingItem = new ReadingItem(user: user, resource: resource, isRead: (user.id == resource.createdBy.id))
            if (userReadingItem.validate()) {
                userReadingItem.save(flush: true)
            }
        }
    }



    def saveRating() {
        Resource_Rating resource_rating;
        resource_rating = Resource_Rating.findByResourceAndUser(Resource.get(params.id), session.user)
        if (!resource_rating) {
            resource_rating = new Resource_Rating(resource: Resource.get(params.id), score: params.score, user: session.user)
            resource_rating.save(flush: true)
        } else {
            resource_rating.score = params.int('score')
            resource_rating.save(flush: true)
        }
        Map map = [message: resource_rating]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    def toppost() {
        List<TopicVO> topposts;
        if (params.time == "Today")
            topposts = Resource.getToppost()
        else {
            Date currentDate = new Date()
            if (params.time == "Yesterday") {
                topposts = Resource.getToppost(currentDate, currentDate - 1)

            } else if (params.time == "Week Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 7)
            } else if (params.time == "Month Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 29)
            } else if (params.time == "Year Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 365)
            }
        }
        List userId = topposts?.createdBy?.id
        Map map = [topposts: topposts, userId: userId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}