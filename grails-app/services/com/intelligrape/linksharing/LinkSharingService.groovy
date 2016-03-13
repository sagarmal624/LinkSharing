package com.intelligrape.linksharing

import LinkSharing.TopicVO
import grails.transaction.Transactional

@Transactional
class LinkSharingService {

  Map fetchDashboardData(String email)
  {   Map map = [:]

      User user = User.findByEmail(email)
      Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
      List<Topic> topicsName = user?.subscriptions?.topic

      List<TopicVO> subscriptionList = [];
      topicsName.each { Topic topic ->
          println topic.name;
          subscriptionList.add(Topic.getSubscribedTopicDetail(topic?.name))

      }
   map=[totalResourceAndSubscription:totalResourceAndSubscription,subscriptionList:subscriptionList]
return map
  }
    List fetchInboxData(User user)
    {
        List<Resource> unreadResources = ReadingItem.createCriteria().list([max: 10]) {
            projections {
                property("resource")

            }

            eq("user", user)
            eq("isRead", false)
//            order("dateCreated", "desc")
        }
        return unreadResources
    }
    Map fetchProfileData(User user)
    {
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        List<TopicVO> userTopics = []
        User.findByEmail(user.email).topics.each { topic ->

            userTopics.add(new TopicVO(id: topic.id, seriousness: Subscription.findByTopic(topic)?.seriousness, visibility: topic.visibility, createdDate: topic.dateCreated, name: topic.name, countPost: Resource.countByTopic(topic), countSubscription: Subscription.countByTopic(topic)))
        }
             Map map=[totalResourceAndSubscription:totalResourceAndSubscription,userTopics:userTopics]
return map
    }
    List fetchLoadMainPageData()
    {
        List<Resource> resources = Resource.getRecentResources()
return resources
    }
    Map fetchTrendingPostData(User user)
    {
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(user)
        List<TopicVO> trendingTopicList = Topic.getTrendingTopics()
      Map map=[totalResourceAndSubscription:totalResourceAndSubscription,trendingTopicList:trendingTopicList]
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
            eq('id', id)
        }
        TopicVO topicVO = Topic.getSubscribedTopicDetail(resourceDetails[0]?.getAt(1))
        List<Resource> resources = Resource.findAllByTopic(Topic.findByName(resourceDetails[0]?.getAt(1)))
        List<Topic> topicList=Topic.getSubscribedUsersDatailOfTopic(resourceDetails[0]?.getAt(1))
        map = [topicVO: topicVO, resources: resources,topicList:topicList]
        map
    }

}
