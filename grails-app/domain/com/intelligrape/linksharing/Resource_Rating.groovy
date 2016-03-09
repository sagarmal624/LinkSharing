package com.intelligrape.linksharing


class Resource_Rating {
    static belongsTo = [resource: Resource, user: User]
    Integer score;
    static constraints = {
        score(validator: {Integer val->(1..5).contains(val) })
        user(nullable:false,unique:true)
        resource(nullable: false)
    }
}
