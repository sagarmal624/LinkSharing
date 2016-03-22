package com.intelligrape.linksharing

import Enums.Visibility
import grails.transaction.Transactional

@Transactional
class TopicService {

    String updateVisibility(long userId, long topicId, String visibility) {
        User user=User.get(userId)
        Topic topic
        if(user.admin)
             topic=Topic.get(topicId)
        else
            topic= Topic.findByCreatedByAndId(user, topicId)
        topic.visibility = Visibility.toEnum(visibility)
        String message;

        if (topic.save(flush: true)) {
            message = "Visibility is Updated"
        } else {
            message = "Visibility is not updated"
        }
        return message
    }

    def deleteTopic(long id) {
        Topic.get(id).delete(flush: true);
    }

    String updateTopic(long id, String name) {
        String message;
        Topic topic = Topic.get(id)
        topic.name =name;
        message = "Topic Name is already Exist"
        if (topic.save(flush: true))
            message = "Record is Updated"
        return message;
    }

    String saveTopic(String topicname, String visibility, String email) {

        String message;
        User user = User.findByEmail(email)
        Topic topic = new Topic(name: topicname, createdBy: user, visibility: Visibility.toEnum(visibility))
        if (!topic.validate()) {
            message = "This Topic name is already Exist!.Please Change Topic Name!"
        } else {
            Thread.sleep(100)
            message = "Topic is created successfully!"
            topic.save(flush: true)
        }
        return message;
    }
}
