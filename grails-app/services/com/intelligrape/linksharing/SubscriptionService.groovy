package com.intelligrape.linksharing

import Enums.Seriousness
import grails.transaction.Transactional

@Transactional
class SubscriptionService {

    boolean deletSubscription(long id, String email) {
        Subscription subscription = Subscription.findByTopicAndUser(Topic.get(id), User.findByEmail(email))
        if (subscription) {
            subscription.delete(flush: true)
            return true
        } else
            return false


    }
    String saveSubscription(long id,String email){
        String message="";
        Subscription subscription = Subscription.findByUserAndTopic(User.findByEmail(email), Topic.get(id))
        if (!subscription) {
            subscription = new Subscription(seriousness: Seriousness.SERIOUS, user: User.findByEmail(email), topic: Topic.get(id))
            if (subscription.validate()) {
                subscription.save(flush: true)

               message = "Success"
            } else {
                message = "Cannot make subscription"
            }
        } else message = "Subscription is not found"
            return message
    }
    String updateSubscription(long userId, long topicId, String seriousness){
        String message="";
        Subscription subscription = Subscription.findByUserAndTopic(User.get(userId), Topic.get(topicId))
        if (subscription?.validate()) {
            subscription.seriousness = Seriousness.getSeriousness(seriousness);
            subscription.save(flush: true)
            message = "Seriousness is Updated"
        } else {
            message = "Seriousness is not updated"
        }

    }
}
