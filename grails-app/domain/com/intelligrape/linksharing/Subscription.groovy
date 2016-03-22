package com.intelligrape.linksharing

import Enums.Seriousness

class Subscription {
    Date dateCreated;
    Date lastUpdated;

    static belongsTo=[user:User,topic:Topic]
    Seriousness seriousness;
    static constraints = {
      seriousness(nullable: false,blank:false)
        user(nullable:false)
        topic(nullable:false)
        dateCreated(nullable:true)
        lastUpdated(nullable:true)

    }
}
