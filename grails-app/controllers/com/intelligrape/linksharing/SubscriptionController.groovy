package com.intelligrape.linksharing

import Enums.Seriousness
class SubscriptionController extends UtilController {
    def delete(long id) {
        Subscription subscription = Subscription.findByTopicAndUser(Topic.get(id), User.findByEmail(session.email))
        if (subscription) {
            subscription.delete(flush: true)
        } else {
            Map map = [message: flash.message]
            groovy.lang.Closure closure = { map }
            renderAsJSON(closure)
        }
         }
    def save(long id) {
        Subscription subscription = Subscription.findByUserAndTopic(User.findByEmail(session.email), Topic.get(id))
        if (!subscription) {
            subscription = new Subscription(seriousness: Seriousness.SERIOUS, user: User.findByEmail(session.email), topic: Topic.get(id))
            if (subscription.validate()) {
                subscription.save(flush: true)

                flash.message = "Success"
            } else {
                flash.message = "Cannot make subscription"
            }
        } else flash.message = "Subscription is not found"
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    def update(long userId, long topicId, String seriousness) {
        Subscription subscription = Subscription.findByUserAndTopic(User.get(userId), Topic.get(topicId))
        if (subscription?.validate()) {
            subscription.seriousness = Seriousness.getSeriousness(seriousness);
            subscription.save(flush: true)
            flash.message = "Seriousness is Updated"
        } else {
            flash.message = "Seriousness is not updated"
        }
        Map map = [message: flash.message, topicid: topicId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}
