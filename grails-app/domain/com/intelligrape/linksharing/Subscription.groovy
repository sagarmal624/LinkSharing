package com.intelligrape.linksharing

import Enums.Seriousness

class Subscription {

    static belongsTo=[user:User,topic:Topic]
    Seriousness seriousness;
    static constraints = {
      seriousness(nullable: false,blank:false)
        user(nullable:false)
        topic(nullable:false)

    }
}
