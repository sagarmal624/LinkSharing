package com.intelligrape.linksharing


class ResourceRating {
    static belongsTo = [resource: Resource, user: User]
    Integer score;
    static constraints = {
        score(validator: {Integer val->(1..5).contains(val) })
        user(nullable:false)
        resource(nullable: false)
    }
}
