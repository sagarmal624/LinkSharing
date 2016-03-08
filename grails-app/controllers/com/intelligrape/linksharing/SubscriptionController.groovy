package com.intelligrape.linksharing

import Enums.Seriousness

class SubscriptionController extends UtilController{

    def delete() {
        long id = params.long('id')
        Subscription subscription = Subscription.get(id)
        if (subscription) {
            subscription.delete(flush: true)
            render("Success")
        } else {
            render("Subscription not found")
        }
    }

    def save(long topicId) {
        Subscription newSubscription = new Subscription(seriousness: Seriousness.SERIOUS, user: User.findByFirstname(session.user), topic: Topic.get(topicId))

        if (newSubscription.validate()) {
            newSubscription.save(flush: true)
            render("Success")
        } else {
            render("Cannot make subscription")
        }

    }

    def update(long userId, long topicId, String seriousness) {

          println"------------->"+userId
        println"------------->"+topicId

        println"------------->"+seriousness

        Subscription subscription = Subscription.findByUserAndTopic(User.get(userId), Topic.get(topicId))
        if (subscription.validate()) {
            subscription.seriousness = Seriousness.getSeriousness(seriousness);
            subscription.save(flush:true)
         flash.message="Seriousness is successfully Updated"
        } else {
            flash.message="Seriousness is not updated"
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }
}
