package com.intelligrape.linksharing

import grails.transaction.Transactional

@Transactional
class ReadingItemService {

    def changeIsRead(String email, long id,boolean isRead) {
        Resource resource = Resource.get(id)
        User user = User.findByEmail(email)
        ReadingItem readingItem = ReadingItem.findByResourceAndUser(resource, user)
        if (readingItem) {
            ReadingItem.executeUpdate("update ReadingItem set isRead=${isRead} where resource=${id}")
        } else {
            new ReadingItem(resource: resource, user: user, isRead: isRead).save(flash: true)
        }

    }
    List<Resource> fetchInboxData(String email,User user){
        List<Topic> topics = User.getSubscribedTopic(email)
        List<Resource> resources = [];
        List<Resource> unreadResources = [];
        topics.each { topic ->
            resources.add(Resource.findAllByTopic(topic))
        }
        resources.each { resource ->

            unreadResources.add(ReadingItem.findAllByUserAndIsRead(user, false)*.resource.intersect(resource))

        }
return unreadResources;
    }
}
