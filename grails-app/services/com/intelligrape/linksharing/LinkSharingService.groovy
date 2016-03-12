package com.intelligrape.linksharing

import LinkSharing.TopicVO
import grails.transaction.Transactional

@Transactional
class LinkSharingService {


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
            eq('id', id)
        }
//        Boolean isSubscribed=Subscription.findByTopicAndUser(Topic.findByName(resourceDetails[0]?.getAt(1)),User.findByEmail(email))?true:false
println "before============================"
        TopicVO topicVO = Topic.getSubscribedTopicDetail(resourceDetails[0]?.getAt(1))
        println "after....................."
        List<Resource> resources = Resource.findAllByTopic(Topic.findByName(resourceDetails[0]?.getAt(1)))
        List<Topic> topicList=Topic.getSubscribedUsersDatailOfTopic(resourceDetails[0]?.getAt(1))
        println "done-----------------------------------------------"+topicVO
        map = [topicVO: topicVO, resources: resources,topicList:topicList]
        map
    }

}
