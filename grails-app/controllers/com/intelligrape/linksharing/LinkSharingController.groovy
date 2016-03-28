package com.intelligrape.linksharing

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.context.SecurityContextHolder

class LinkSharingController {
    def linkSharingService

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def loadmainpage() {
//        println "before action--------------load main page--linkSharingPath--"+grailsApplication.config.linkSharingPath
//        Map map = linkSharingService.fetchLoadMainPageData()
//        render view: "/HomePage", model: [topPostResource: Resource.getToppost(), recentTopicShare: map.resources,userId:map.userId]
      }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def showResource(long id) {
        Map map = linkSharingService.fetchSearchData(params.long('id'))
        render view: "/util/showResource", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic(), resources: map.resources, topicDetails: map.topicVO, topicusersDetails: map.topicList, isSubscribed: map.isSubscribed, resourceId: map.topicVO.resourceId]
    }
   @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def dashboard() {
        GrailsUser user = SecurityContextHolder.getContext().getAuthentication().getPrincipal()
        session.user=User.findByUsername(user.username)
        Map map = linkSharingService.fetchDashboardData(session.user.email)
        render view: "dashboard", model: [unreadResources:map.unreadResources,SubscribedTopicList: loadTopic(), subscriptions: map.subscriptionList, totalSubscription: map.totalResourceAndSubscription.totalSubscription, totalTopic: map.totalResourceAndSubscription.totalTopic, totalPost: map.totalResourceAndSubscription.totalPost]
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def trendingPost() {
        Map map = linkSharingService.fetchTrendingPostData(session.user)
        render view: "/util/widgets", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic(), trendingTopicList: map.trendingTopicList, topPostResource: Resource.getToppost(), totalSubscription: map.totalResourceAndSubscription.totalSubscription, totalTopic: map.totalResourceAndSubscription.totalTopic, totalPost: map.totalResourceAndSubscription.totalPost]
    }

    @Secured(['ROLE_ROYALTY'])
    def admin() {
        List<User> users = User.list()
                 render view: "/tables/data", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic(), users: users]
//        render(users as JSON)
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def inbox() {
            List unreadResources = linkSharingService.fetchInboxData(session.user)
            render view: "/mailbox/mailbox", model: [unreadPost:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic(), unreadResources: unreadResources]

    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
     def forwardMail(long id, int totalUnreadMail) {

        render view: "/mailbox/forward", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),resource: Resource.get(id), totalUnreadMail: totalUnreadMail]
    }

    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def calender() {
        render view: "/util/calendar", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic()]

    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def profile() {

        List<ReadingItem> readingItem=ReadingItem.createCriteria().list(){
            eq('user',session.user)
        }
        List<Resource>resources=Resource.createCriteria().list(){
            order('lastUpdated','desc');
        }
        List<Resource>dateWiseResources=[];
        readingItem.each{ReadingItem readingItem1->
            dateWiseResources.add(readingItem1?.resource)
        }
        List<Resource>timeLineResource=Resource.getAll(dateWiseResources.id.intersect(resources.id))

        List<Topic>timeLineTopics=Topic.createCriteria().list(){

                order('lastUpdated','desc');
            eq('createdBy',session.user);
        }
        List<Subscription>timeLineSubscription=timeLineTopics.subscriptions.flatten()
        Map map = linkSharingService.fetchProfileData(session.user)

        render view: "/UserProfileAndLockScreen/profile", model: [unreadResources:linkSharingService.getTotalUnreadPost(session.user),timeLineSubscription:timeLineSubscription,timeLineResource:timeLineResource,SubscribedTopicList: loadTopic(), userTopics: map.userTopics, totalResourceAndSubscription: map.totalResourceAndSubscription]
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def lockscreen() {
        render view: "/UserProfileAndLockScreen/lockscreen"

    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def composemail(int totalUnreadMail) {
        render view: "/mailbox/compose", model: [SubscribedTopicList: loadTopic(),unreadResources:linkSharingService.getTotalUnreadPost(session.user),SubscribedTopicList: loadTopic(), totalUnreadMail: totalUnreadMail]

    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def readmail(long id, int totalUnreadMail) {

        render view: "/mailbox/read-mail", model: [SubscribedTopicList: loadTopic(),unreadResources:linkSharingService.getTotalUnreadPost(session.user),resource: Resource.get(id), totalUnreadMail: totalUnreadMail]
    }

    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    private List<Subscription> loadTopic() {
        if (session.user.admin)
            return Subscription.list()*.topic;
        else
            return User.getSubscribedTopic(session?.user.email)
    }

}
