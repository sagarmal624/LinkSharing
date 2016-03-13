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
                forward(action:"inbox",controller:"linkSharing")

        } else {
            new ReadingItem(resource: resource, user: user, isRead: isRead).save(flash: true)
                forward(action:"inbox",controller:"linkSharing")

        }
    }
    def inbox()
    {
        List<Topic>topics=User.getSubscribedTopic(session.email)
        List <Resource> resources=[];
        List<Resource>unreadResources=[];
        topics.each {topic->
            resources.add(Resource.findAllByTopic(topic))
         }
        resources.each {resource->

            unreadResources.add(ReadingItem.findAllByUserAndIsRead(session.user,false)*.resource.intersect(resource))

        }

          render unreadResources.flatten()
    }
}
