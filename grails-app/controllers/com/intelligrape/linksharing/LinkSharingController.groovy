package com.intelligrape.linksharing

import LinkSharing.TopicVO

class LinkSharingController {

    def linkSharingService
    //TODO: Find usage of this action & remove if not used.
    def loadmainpage()
    {
        List<Resource>resources=Resource.getRecentResources()
        render view:"/HomePage",model:[topPostResource:Resource.getToppost(),recentTopicShare:resources]
    }
    def Home() {
        render view: "/linkSharing/dashboard"

    }
    //TODO: Remove commented codes.
    //TODO: Remove println & use log.
    def showResource(long id) {
        Map map= linkSharingService.fetchSearchData(params.long('id'))
        render view: "/util/showResource", model: [SubscribedTopicList:loadTopic(),resources: map.resources, topicDetails: map.topicVO, topicusersDetails:map.topicList,isSubscribed:map.isSubscribed]
    }

    def dashboard() {
        println "===========================================load topics----------before--------"
        User user = User.findByEmail(session.email)
        Map totalResourceAndSubscription=User.getTotalResourceAndSubscription(user)
        List<Topic> topicsName = user?.subscriptions?.topic

        List<TopicVO> subscriptionList = [];
        topicsName.each { Topic topic ->
            println topic.name;
            subscriptionList.add(Topic.getSubscribedTopicDetail(topic?.name))

        }
        println "load topics------------------"+loadTopic()
       render view: "dashboard", model: [SubscribedTopicList:loadTopic(),subscriptions: subscriptionList,totalSubscription:totalResourceAndSubscription.totalSubscription,totalTopic:totalResourceAndSubscription.totalTopic,totalPost:totalResourceAndSubscription.totalPost]
    }

    def trendingPost() {

        Map totalResourceAndSubscription=User.getTotalResourceAndSubscription(session.user)

        List<TopicVO>trendingTopicList=Topic.getTrendingTopics()

        render view: "/util/widgets",model:[SubscribedTopicList:loadTopic(),trendingTopicList:trendingTopicList,topPostResource:Resource.getToppost(),totalSubscription:totalResourceAndSubscription.totalSubscription,totalTopic:totalResourceAndSubscription.totalTopic,totalPost:totalResourceAndSubscription.totalPost]
    }

    def accountSetting() {
        render view: "/AccountSetting/general",model:[SubscribedTopicList:loadTopic()]
    }

    def admin() {
        render view: "/tables/data",model:[SubscribedTopicList:loadTopic()]

    }

    def inbox() {
        List<Topic>topics=User.getSubscribedTopic(session.email)
        List <Resource> resources=[];
        List<Resource>unreadResources=[];
        topics.each {topic->
            resources.add(Resource.findAllByTopic(topic))
        }
        resources.each {resource->

            unreadResources.add(ReadingItem.findAllByUserAndIsRead(session.user,false)*.resource.intersect(resource))

        }


        render view: "/mailbox/mailbox",model:[SubscribedTopicList:loadTopic(),unreadResources:unreadResources.flatten()]
    }

    def calender() {
        render view: "/util/calendar",model:[SubscribedTopicList:loadTopic()]

    }

    def profile() {

        render view: "/UserProfileAndLockScreen/profile",model:[SubscribedTopicList:loadTopic()]
    }

    def lockscreen() {
        render view: "/UserProfileAndLockScreen/lockscreen"

    }

    def composemail() {
        render view: "/mailbox/compose",model:[SubscribedTopicList:loadTopic()]

    }

    def readmail() {
        render view: "/mailbox/read-mail"
    }

    def mainpage() {
        render view: "../index"
    }
    private List<Subscription>loadTopic()
    {
        return User.getSubscribedTopic(session?.email)
    }
}
