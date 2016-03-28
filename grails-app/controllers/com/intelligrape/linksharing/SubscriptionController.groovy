package com.intelligrape.linksharing

import Enums.Seriousness
import grails.plugin.springsecurity.annotation.Secured

class SubscriptionController extends UtilController {
    def subscriptionService
    @Secured(['ROLE_ROYALTY', 'ROLE_COMMON'])
    def delete(long id) {
        boolean isDeleted = subscriptionService.deletSubscription(id, session.user.email)
        if (isDeleted) {
            flash.message = "Successfully deleted"
        } else {
            flash.message = "not deleted"
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    @Secured(['ROLE_ROYALTY', 'ROLE_COMMON'])
    def save(long id) {
        String message = subscriptionService.saveSubscription(id, session.user.email)
        Map map = [message: message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

    @Secured(['ROLE_ROYALTY', 'ROLE_COMMON'])
    def update(long userId, long topicId, String seriousness) {
        String message = subscriptionService.updateSubscription(userId, topicId, seriousness)
        Map map = [message: message, topicid: topicId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}
