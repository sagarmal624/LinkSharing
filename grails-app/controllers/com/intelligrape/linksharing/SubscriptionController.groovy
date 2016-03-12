package com.intelligrape.linksharing

import Enums.Seriousness

class SubscriptionController extends UtilController{
    def delete(long id) {
        //long id = params.long('topicid')
        println "===========delete subscription id====="+id
        Subscription subscription = Subscription.findByTopicAndUser(Topic.get(id),User.findByEmail(session.email))
        if (subscription) {
            subscription.delete(flush: true)
            //render("Success")
              forward(controller:"linkSharing",action:"showResource",params: [id:id])
        } else {
            forward(controller:"linkSharing",action:"showResource",params: [id:id])


        }
    }
        def save(long id) {

        Subscription subscription=Subscription.findByUserAndTopic(User.findByEmail(session.email),Topic.get(id))
       if(!subscription)
       {
           subscription = new Subscription(seriousness: Seriousness.SERIOUS, user: User.findByEmail(session.email), topic: Topic.get(id))
           if (subscription.validate()) {
               subscription.save(flush: true)

               flash.message="Success"
               forward(controller:"linkSharing",action:"showResource",params: [id:id])
           } else {
               flash.message="Cannot make subscription"
               forward(controller:"linkSharing",action:"showResource",params: [id:id])

           }

       }

    }

    def update(long userId, long topicId, String seriousness) {

          println"------------->"+userId
        println"------------->"+topicId

        println"------------->"+seriousness
        Subscription subscription = Subscription.findByUserAndTopic(User.get(userId), Topic.get(topicId))
        println"-------abcd ------>"+subscription.getProperties()

        if (subscription?.validate()) {
            subscription.seriousness = Seriousness.getSeriousness(seriousness);
            subscription.save(flush:true)
         flash.message="Seriousness is successfully Updated"
        } else {
            flash.message="Seriousness is not updated"
        }
        Map map = [message: flash.message,topicid:topicId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}
