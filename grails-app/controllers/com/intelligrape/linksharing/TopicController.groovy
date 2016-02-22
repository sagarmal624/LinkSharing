package com.intelligrape.linksharing

class TopicController {

    def index() {
      Topic topic=Topic.get(2)
      render topic.addToSubscriptions(new Subscription(seriousness:Seriousness.VERY_SERIOUS))
                .save(flush:true)

    }
}
