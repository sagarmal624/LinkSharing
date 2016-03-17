package com.intelligrape.linksharing

import Enums.UserStatus
import LinkSharing.DataTableCO

class User {
    String username
    String firstname
    String lastname
    String email
    String password
    Boolean admin
    Boolean active
    String imagePath
    Date dateCreated
    Date lastUpdated
    transient confirmPassword
    static hasMany = [topics: Topic, subscriptions: Subscription, resources: Resource, resource_ratings: Resource_Rating, readingItems: ReadingItem]
    static mapping = {
        sort id: "desc"
    }
    static transients = ['name']
    static constraints = {
        username(blank: false, nullable: false, unique: true)
        firstname(blank:false, nullable: false)
        lastname(blank: true, nullable: true)
        password(blank: false, nullable: false, size: 5..10)
        email(email: true, blank: false, nullable: false, unique: true)
        admin(defaultValue: true, nullable: true)
        imagePath(nullable: true)
        active(defaultValue: true, nullable: true)
        dateCreated(nullable: true, blank: true)
        lastUpdated(nullable: true, blank: true)
        topics(nullable: true)
        subscriptions(nullable: true)
        resources(nullable: true)
        resource_ratings(nullable: true)
        readingItems(nullable: true)
        //confirmPassword(blank:true,nullable:true,validator:{val,obj-> return !val.equals(obj.password)})
        confirmPassword bindable: true, nullable: true, blank: true, validator: { val, object ->
            if ((val != object.password)) {
                return false
            }
            return true
        }

    }

    public String toString() {
        return username

    }

    public String getName() {
        if (lastname)
            return "${firstname} ${lastname}"
        else
            return "${firstname}"

    }

    public static List<Subscription> getSubscribedTopic(String emailid) {

        List<Subscription> topics = Subscription.createCriteria().list {
            projections {
                property('topic')
            }
            eq('user', User.findByEmail(emailid))
        }
        return topics
    }

    boolean isSubscribed(long topicId) {
        return (Subscription.findByUserAndTopic(this, Topic.get(topicId)))
    }

    public static Map getTotalResourceAndSubscription(User user) {
        int totalSubscription = Subscription.countByUser(user)
        int totalTopic = Topic.countByCreatedBy(user)
        int totalPost = Resource.countByCreatedBy(user)
        return [totalSubscription: totalSubscription, totalTopic: totalTopic, totalPost: totalPost]
    }
    static namedQueries = {
        search {DataTableCO userSearchCO ->
            if (userSearchCO.q) {
                or {
                    ilike('firstname', "%${userSearchCO.q}%")
                    ilike('lastname', "%${userSearchCO.q}%")
                    ilike('username', "%${userSearchCO.q}%")
                    ilike('email', "%${userSearchCO.q}%")
                }
                if (userSearchCO.isActive == UserStatus.ACTIVE) {
                    eq('active', true)
                } else if (userSearchCO.isActive == UserStatus.INACTIVE) {
                    eq('active', false)
                }
            }
        }
    }
}