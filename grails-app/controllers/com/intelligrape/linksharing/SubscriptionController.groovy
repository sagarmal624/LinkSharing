package com.intelligrape.linksharing

import Enums.Seriousness

class SubscriptionController {

    def delete()
    {
        long id=params.long('id')
        Subscription subscription = Subscription.get(id)
        if(subscription)
        {
            subscription.delete(flush:true)
            render("Success")
        }
        else {
            render("Subscription not found")
        }
    }
    def save(long topicId)
    {
        Subscription newSubscription = new Subscription(seriousness:Seriousness.SERIOUS,user:User.findByFirstname(session.user),topic:Topic.get(topicId))

        if(newSubscription.validate())
        {
            newSubscription.save(flush:true)
            render("Success")
        }
        else {
            render("Cannot make subscription")
        }

    }
    def update(int id,String seriousness)
    {
        Subscription subscription = Subscription.findByIdAndSeriousness(id,Seriousness.getSeriousness(seriousness))
        if(subscription.validate())
        {
            subscription.save()
            render("Success")
        }
        else {
            render("Subscription cannot be updated")
        }
    }
}
