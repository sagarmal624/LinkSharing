package com.intelligrape.linksharing

import LinkSharing.TopPostVO
import LinkSharing.TopicVO
import grails.transaction.Transactional

@Transactional
class LinkSharingService {

    Map fetchDashboardData(String email) {
        Map map = [:]
        User user = User.findByEmail(email)
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        List<Topic> topicsName
        if (user?.admin)
            topicsName = Subscription.list()*.topic
        else
            topicsName = user?.subscriptions?.topic

        List<TopicVO> subscriptionList = [];
        topicsName.each { Topic topic ->
            subscriptionList.add(Topic.getSubscribedTopicDetail(topic?.name))
        }



        map = [unreadResources:getTotalUnreadPost(user),totalResourceAndSubscription: totalResourceAndSubscription, subscriptionList: subscriptionList]
        return map
    }
    int getTotalUnreadPost(User user){
        List<Resource> unreadResources = ReadingItem.createCriteria().list() {
            projections {
                property("resource")

            }
            eq('isRead',false)
            eq("user", user)
        }
 return unreadResources.size()

    }
    List fetchInboxData(User user) {
        List<Resource> unreadResources = ReadingItem.createCriteria().list() {
            projections {
                property("resource")

            }
            order('isRead','asc')
            eq("user", user)
        }

        return unreadResources
    }

    Map fetchProfileData(User user) {
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        List<TopicVO> userTopics = []

        if (user.admin) {

            Topic.list().each { topic ->

                userTopics.add(new TopicVO(createdBy:topic.createdBy,id: topic.id, seriousness: Subscription.findByTopic(topic)?.seriousness, visibility: topic.visibility, createdDate: topic.dateCreated, name: topic.name, countPost: Resource.countByTopic(topic), countSubscription: Subscription.countByTopic(topic)))
            }

        } else {
            User.findByEmail(user.email).topics.each { topic ->

                userTopics.add(new TopicVO(createdBy:topic.createdBy,  id: topic.id, seriousness: Subscription.findByTopic(topic)?.seriousness, visibility: topic.visibility, createdDate: topic.dateCreated, name: topic.name, countPost: Resource.countByTopic(topic), countSubscription: Subscription.countByTopic(topic)))
            }

        }
        Map map = [totalResourceAndSubscription: totalResourceAndSubscription, userTopics: userTopics]
        return map
    }

    Map fetchLoadMainPageData() {
        println("testing in service")
        List<Resource> resources = Resource.getRecentResources()
        List<TopPostVO> topPostResource=Resource.getToppost()
        Map map=[resources:resources,topPostResource:topPostResource]
        return map
    }

    Map fetchTrendingPostData(User user) {
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        List<TopicVO> trendingTopicList = Topic.getTrendingTopics()
        Map map = [totalResourceAndSubscription: totalResourceAndSubscription, trendingTopicList: trendingTopicList]
        return map
    }

    Map fetchSearchData(long id) {
        Map map = [:]
        List<Resource> resourceDetails = (List<Resource>) Resource.createCriteria().list {
            projections {
                property('createdBy')
                'topic' {
                    property('name')
                    property('visibility')

                }
            }
            eq('topic', Topic.get(id))
        }
        TopicVO topicVO = Topic.getSubscribedTopicDetail(resourceDetails[0]?.getAt(1))
        List<Resource> resources = Resource.findAllByTopic(Topic.findByName(resourceDetails[0]?.getAt(1)))
        List<Topic> topicList = Topic.getSubscribedUsersDatailOfTopic(resourceDetails[0]?.getAt(1))
        map = [topicVO: topicVO, resources: resources, topicList: topicList]
        map
    }

}
