package com.intelligrape.linksharing

import Enums.Seriousness

class SubscriptionController extends UtilController {
    def subscriptionService

    def delete(long id) {
        boolean isDeleted = subscriptionService.deletSubscription(id, session.email)
        if (isDeleted) {
            flash.message = "Successfully deleted"
        } else {
            flash.message = "not deleted"
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    def save(long id) {
        String message = subscriptionService.saveSubscription(id,session.email)
        Map map = [message:message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    def update(long userId, long topicId, String seriousness) {
        String message=subscriptionService.updateSubscription(userId,topicId,seriousness)
        Map map = [message:message, topicid: topicId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}
