package com.intelligrape.linksharing

class LinkSharingController {
    def linkSharingService

    def loadmainpage() {

        Map map = linkSharingService.fetchLoadMainPageData()
        render view: "/HomePage", model: [topPostResource: Resource.getToppost(), recentTopicShare: map.resources,userId:map.userId]

    }

    def Home() {
        render view: "/linkSharing/dashboard"
    }

    def showResource(long id) {
        Map map = linkSharingService.fetchSearchData(params.long('id'))
        render view: "/util/showResource", model: [SubscribedTopicList: loadTopic(), resources: map.resources, topicDetails: map.topicVO, topicusersDetails: map.topicList, isSubscribed: map.isSubscribed, resourceId: map.topicVO.resourceId]
    }

    def dashboard() {

        Map map = linkSharingService.fetchDashboardData(session.email)
        render view: "dashboard", model: [SubscribedTopicList: loadTopic(), subscriptions: map.subscriptionList, totalSubscription: map.totalResourceAndSubscription.totalSubscription, totalTopic: map.totalResourceAndSubscription.totalTopic, totalPost: map.totalResourceAndSubscription.totalPost]
    }

    def trendingPost() {
        Map map = linkSharingService.fetchTrendingPostData(session.user)
        render view: "/util/widgets", model: [SubscribedTopicList: loadTopic(), trendingTopicList: map.trendingTopicList, topPostResource: Resource.getToppost(), totalSubscription: map.totalResourceAndSubscription.totalSubscription, totalTopic: map.totalResourceAndSubscription.totalTopic, totalPost: map.totalResourceAndSubscription.totalPost]
    }

    def accountSetting() {
        render view: "/AccountSetting/general", model: [SubscribedTopicList: loadTopic()]
    }

    def admin() {
        List<User> users = User.list()

        render view: "/tables/data", model: [SubscribedTopicList: loadTopic(), users: users]

    }

    def inbox() {
        List unreadResources = linkSharingService.fetchInboxData(session.user)
        render view: "/mailbox/mailbox", model: [SubscribedTopicList: loadTopic(), unreadResources: unreadResources]
    }

    def calender() {
        render view: "/util/calendar", model: [SubscribedTopicList: loadTopic()]

    }

    def profile() {
        Map map = linkSharingService.fetchProfileData(session.user)

        render view: "/UserProfileAndLockScreen/profile", model: [SubscribedTopicList: loadTopic(), userTopics: map.userTopics, totalResourceAndSubscription: map.totalResourceAndSubscription]
    }

    def lockscreen() {
        render view: "/UserProfileAndLockScreen/lockscreen"

    }

    def composemail(int totalUnreadMail) {
        render view: "/mailbox/compose", model: [SubscribedTopicList: loadTopic(), totalUnreadMail: totalUnreadMail]

    }

    def readmail(long id, int totalUnreadMail) {

        render view: "/mailbox/read-mail", model: [resource: Resource.get(id), totalUnreadMail: totalUnreadMail]
    }

    def mainpage() {
        render view: "../index"
    }

    private List<Subscription> loadTopic() {
        if (session.user.admin)
            return Subscription.list()*.topic;
        else
            return User.getSubscribedTopic(session?.email)
    }

}
