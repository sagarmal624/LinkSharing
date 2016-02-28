package com.intelligrape.linksharing
class User {
    String username
    String firstname
    String lastname
    String email
    String password
    Boolean admin
    Boolean active
    byte[] photo
    Date dateCreated
    Date lastUpdated
    transient confirmPassword
    static hasMany = [topics:Topic,subscriptions:Subscription,resources:Resource,resource_ratings:Resource_Rating,readingItems:ReadingItem]
    static mapping = {
        sort id:"desc"
    }
    static transients = ['name']
    static constraints = {
        username(blank:true,nullable:false,unique:true)
        firstname (blank: true, nullable: false)
        lastname  (blank: true, nullable: false)
        password (blank:true,nullable:false,size:5..10)
        email (email:true ,blank:true,nullable:false,unique:true)
        admin (defaultValue: true,nullable:true)
        photo (size:0..5000000,nullable:true)
        active (defaultValue: true,nullable: true)
        dateCreated(nullable: true,blank:true)
        lastUpdated(nullable:true,blank:true)
        topics(nullable:true)
        subscriptions(nullable:true)
        resources(nullable:true)
        resource_ratings(nullable:true)
        readingItems(nullable:true)
        //confirmPassword(blank:true,nullable:true,validator:{val,obj-> return !val.equals(obj.password)})
        confirmPassword bindable:true ,nullable:true, blank:true, validator: { val, object ->
            if ((val != object.password)) {
                return false
            }
            return true
        }

    }
    public String toString()
    {
        return username

    }
    public String getName()
    {
        return "${firstname} ${lastname}"
    }
    public static List<Subscription> getSubscribedTopic(String emailid)
    {

        List<Subscription>topics= Subscription.createCriteria().list {
            projections {
                property('topic')
            }
            eq('user',User.findByEmail(emailid))
        }
        return topics
    }

}