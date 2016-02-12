package com.intelligrape.linksharing

class ReadingItem {
static belongsTo = [resource:Resource,user:User]
    Boolean isRead;
    static constraints = {
     isRead(nullable:false,defaultValue:false)
          resource(nullable: true)
          user(nullable: true)

    }
}
