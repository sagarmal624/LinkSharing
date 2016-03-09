package com.intelligrape.linksharing

class ReadingItemController {

    //TODO: Remove used actions.
    def index() {}

    //TODO: All bussiness logic should exist in services.
    def changeIsRead(Long id, Boolean isRead) {
        Resource resource = Resource.get(id)
        User user = User.findByEmail(session.email)
        ReadingItem readingItem = ReadingItem.findByResourceAndUser(resource, user)
        if (readingItem) {

            int result = ReadingItem.executeUpdate("update ReadingItem set isRead=${isRead} where resource=${id}")
            if (result)
              forward(action:"showResource",controller:"linkSharing",params: "[id:${resource?.topic.id}]" )


            else
                forward(action:"showResource",controller:"linkSharing",params: "[id:${resource?.topic.id}]" )

        } else {
            if (new ReadingItem(resource: resource, user: user, isRead: isRead).save(flash: true))
                forward(action:"showResource",controller:"linkSharing",params: "[id:${resource?.topic.id}]" )
            else
                forward(action:"showResource",controller:"linkSharing",params: "[id:${resource?.topic.id}]" )
        }

    }
}
