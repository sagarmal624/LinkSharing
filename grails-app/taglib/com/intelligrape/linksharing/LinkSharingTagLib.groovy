package com.intelligrape.linksharing
class LinkSharingTagLib {
static namespace = "ls"
    def showSubscribe = { attr, body ->
        User loggedInUser = User.findByEmail(session.email)
        println("attr.topicId >>> "+attr.topicId)
        (loggedInUser?.isSubscribed(attr.topicId)) ? out << g.link(controller: "subscription", action: "delete", id: "${attr.topicId}", "Unsubscribe") : out << g.link(controller: "subscription", action: "save",id: "${attr.topicId}", "Subscribe")
    }
    def isRead = { attr, body ->
        if (session.username) {
            ReadingItem readingItem = ReadingItem.findByUserAndResource(User.findByEmail(session.email), Resource.get(attr.resource))
            if (readingItem) {
                if (readingItem.isRead) {
                    out << g.link(controller: "readingItem", action: "changeIsRead", params: [isRead: false], id: "${readingItem.id}", "Mark as Unread")
                } else {
                    out << g.link(controller: "readingItem", action: "changeIsRead", params: [isRead: true], id: "${readingItem.id}", "Mark as Read")
                }
            } else {
                out << g.link(controller: "readingItem", action: "changeIsRead", params: [isRead: true], id: "${Resource.get(attr.resource)?.id}", "Mark as Read")
            }
        } else {
            out << "helloabc"
        }
    }
    def userImage = { attr, body ->
        out << "<img class='${attr.imageType}' alt='User Image' src='${createLink(controller: "user", action: "renderFromDirectory", id: "${attr.userId}")}' width=32 height=32 >"
    }

   def deleteTopic={attr,body->
       out << "<a href='${createLink(controller: "topic", action: "delete", id: "${attr.topicId}")}'><span class='glyphicon glyphicon-trash' style='font-size:25px'></span></a>"
   }
}
