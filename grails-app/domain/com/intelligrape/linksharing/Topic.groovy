package com.intelligrape.linksharing
import Enums.Seriousness
import Enums.Visibility
import LinkSharing.TopicVO

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
        name(nullable: false, blank: false,unique:true)//,validator:{ val, obj -> !(Topic.findAllById(createdBy).any(val))})
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
     public static List getSubscribedTopic(){


     }
    public static List<TopicVO> getTrendingTopics() {
        List <Resource>topicList = Resource.createCriteria().list() {
            projections {
                groupProperty('topic')
                count('id','counter')
            }
            'topic'{
                property('id')
                property('name')
                property('visibility')
                property('createdBy')
                eq('visibility',Visibility.PUBLIC)
            }
            order('counter','desc')
        }
        List<TopicVO> topicsvo = []
        topicList.eachWithIndex{it,index->
            topicsvo.add(new TopicVO(id: it.getAt(2), name: it.getAt(3), visibility: it.getAt(4), createdBy: it.getAt(5), count: it.getAt(1)))
        }
        return topicsvo
    }
    def afterInsert(){
        Subscription.withNewSession {
            Subscription subscription = new Subscription(topic: this,user: createdBy,seriousness: Seriousness.VERY_SERIOUS)
            //log.info(subscription.validate())
            if(subscription.validate())
            {
                subscription.save()
            }
            else
            {
                log.error("Validation failed")
            }
        }
    }

    public static List<Subscription>getSubscribedUsers(String topicname)
    {

        return   Subscription.createCriteria().list {
            projections {
                property('user')
            }
            eq('topic',Topic.findByName(topicname))
        }
    }
}