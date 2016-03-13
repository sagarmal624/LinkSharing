package com.intelligrape.linksharing

import Enums.Seriousness
import Enums.Visibility
import LinkSharing.TopicVO
import LinkSharing.UserSubscriptionVO

class Topic {
    String name;
    static belongsTo = [createdBy: User]
    static hasMany = [subscriptions: Subscription, resources: Resource]
    Date dateCreated
    Date lastUpdated
    Visibility visibility
    static transients = ['subscribedUsers']
    static mapping = {
        sort name: "asc"
    }
    static constraints = {
        name(nullable: false, blank: false, unique: true)
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        visibility(blank: false, nullable: false, inList: Visibility.values() as List)
        resources(nullable: true)
        subscriptions(nullable: true)
        createdBy(nullable: false)

    }

    public String toString() {
        return name

    }
    public static TopicVO getSubscribedTopicDetail(String topicname) {
        Topic topic = Topic.findByName(topicname)
        int countSubscriptions = Subscription.countByTopic(topic)

        println"countin----------------------->"+countSubscriptions
        String seriousness = Subscription.findByTopic(topic)?.seriousness;
        int countPost = Resource.countByTopic(topic)

        Resource resource = Resource.findByTopic(topic)
        println"countin----------------------->"+resource
        long resourceId
        if (resource)
            resourceId =resource?.id
        else
            resourceId = 0
        return new TopicVO(id: topic.id, resourceId: resourceId, seriousness: seriousness, name: topicname, countPost: countPost, countSubscription: countSubscriptions, visibility: topic.visibility, createdBy: topic.createdBy);

    }

    public static List getSubscribedUsersDatailOfTopic(String topicname) {
        List topicSubscriptionDetails = []
        List<Subscription> subscribedUsers = getSubscribedUsers(topicname)
        subscribedUsers.each { User user ->
            UserSubscriptionVO userSubscriptionVO = new UserSubscriptionVO()
            userSubscriptionVO.user = User.findByUsername(user.username)
            userSubscriptionVO.countPost = getTotalPostsOfUser(userSubscriptionVO.user)
            userSubscriptionVO.countSubscription = getTotalSubscriptionsOfUser(userSubscriptionVO.user)
            topicSubscriptionDetails.add(userSubscriptionVO)
        }
        return topicSubscriptionDetails
    }

    public static Integer getTotalPostsOfUser(User user) {
        return Resource.countByCreatedBy(user)
    }

    public static Integer getTotalSubscriptionsOfUser(User user) {
        return Subscription.countByUser(user)
    }
    public static List<TopicVO> getTrendingTopics() {
        List<Resource> topicList = Resource.createCriteria().list() {
            projections {
                groupProperty('topic')
                count('id', 'counter')
            }
            'topic' {
                property('id')
                property('name')
                property('visibility')
                property('createdBy')
                eq('visibility', Visibility.PUBLIC)
            }
            order('counter', 'desc')
        }

        List<TopicVO> topicsvo = []
        topicList.eachWithIndex { it, index ->
            topicsvo.add(new TopicVO(id: it.getAt(2), name: it.getAt(3), visibility: it.getAt(4), createdBy: it.getAt(5), countPost: Resource.countByTopic(Topic.get(it.getAt(2))), countSubscription:Subscription.countByTopic(Topic.findByName(it.getAt(3))),seriousness:Subscription.findByUserAndTopic(User.findByUsername(it.getAt(5)),Topic.findByName(it.getAt(3))).seriousness))
        }
        return topicsvo
    }

    boolean isSubscribed(long topicId) {
        return (Subscription.findByUserAndTopic(this, Topic.read(topicId)))
    }

    def afterInsert() {
        Subscription.withNewSession {
            Subscription subscription = new Subscription(topic: this, user: createdBy, seriousness: Seriousness.VERY_SERIOUS)
            //log.info(subscription.validate())
            if (subscription.validate()) {
                subscription.save(flush:true)
            } else {
                log.error("Validation failed")
            }
        }
    }

    boolean isPublic() {
        return this.visibility == Visibility.PUBLIC
    }

    boolean canViewedBy(User user) {
        if (user.admin || this.isPublic() || Subscription.countByUserAndTopic(user, this)) {
            return true
        } else {
            return false
        }
    }

    public static List<Subscription> getSubscribedUsers(String topicname) {

        return Subscription.createCriteria().list {
            projections {
                property('user')
            }
            eq('topic', Topic.findByName(topicname))
        }
    }
}