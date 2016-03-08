package com.intelligrape.linksharing

import LinkSharing.TopicVO

class LinkSharingController {

    //TODO: Find usage of this action & remove if not used.
    def Home()
    {
        render view:"/linkSharing/dashboard"

    }

    //TODO: Remove commented codes.
    //TODO: Remove println & use log.
    def showResource(){
        List<Resource> resourceDetails=(List<Resource>)Resource.createCriteria().list{
            projections{
                property('createdBy')
                'topic'{
                    property('name')
                    property('visibility')
                }
            }
            eq('id',params.long('id'))
        }



          TopicVO topicVO=Topic.getSubscribedTopicDetail(resourceDetails[0]?.getAt(1))
           List <Resource>resources=Resource.findAllByTopic(Topic.findByName(resourceDetails[0]?.getAt(1)))


//        int countSubscriptions=Subscription.countByTopic(Topic.findByName('Grails'))
//        int countPost=Resource.countByTopic(Topic.findByName('Grails'))
//         List<Resource>posts= Resource.findAllByTopic(Topic.findByName('Grails'))
//Resource.get(1).topic.name

// println "..............................>"+Topic.getSubscribedUsersDatailOfTopic(resourceDetails[0].getAt(1))

        render view:"/util/showResource",model:[resources:resources,topicDetails:topicVO,topicusersDetails:Topic.getSubscribedUsersDatailOfTopic(resourceDetails[0].getAt(1))]

    }

    def dashboard() {
        render view: "dashboard"
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

    def composemail()
    {
        render view: "/mailbox/compose"

    }
    def readmail()
    {
        render view: "/mailbox/read-mail"
    }
    def mainpage(){
        render view:"../index"
    }
}
