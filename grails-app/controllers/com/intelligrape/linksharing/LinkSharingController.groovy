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
        render view: "/util/showResource", model: [resources: map.resources, topicDetails: map.topicVO, topicusersDetails:map.topicList,isSubscribed:map.isSubscribed]
    }

    def dashboard() {
        User user = User.findByEmail(session.email)
        Map totalResourceAndSubscription=User.getTotalResourceAndSubscription(user)
        List<Topic> topicsName = user?.subscriptions?.topic

        List<TopicVO> subscriptionList = [];
        topicsName.each { Topic topic ->
            println topic.name;
            subscriptionList.add(Topic.getSubscribedTopicDetail(topic?.name))

        }
       render view: "dashboard", model: [subscriptions: subscriptionList,totalSubscription:totalResourceAndSubscription.totalSubscription,totalTopic:totalResourceAndSubscription.totalTopic,totalPost:totalResourceAndSubscription.totalPost]
    }

    def trendingPost() {
        render view: "/util/widgets"
    }

    def accountSetting() {
        render view: "/AccountSetting/general"
    }

    def admin() {
        render view: "/tables/data"

    }

    def inbox() {
        render view: "/mailbox/mailbox"
    }

    def calender() {
        render view: "/util/calendar"

    }

    def profile() {

        render view: "/UserProfileAndLockScreen/profile"
    }

    def lockscreen() {
        render view: "/UserProfileAndLockScreen/lockscreen"

    }

    def composemail() {
        render view: "/mailbox/compose"

    }

    def readmail() {
        render view: "/mailbox/read-mail"
    }

    def mainpage() {
        render view: "../index"
    }
}
