package com.intelligrape.linksharing

import grails.transaction.Transactional

@Transactional
class LinkService {

    def save(String topicname,String description,String url,String email) {
        Resource resource = new LinkResource(topic: Topic.findByName(topicname), createdBy: User.findByEmail(email), description: description, url: url)
        if (resource.validate()) {
            Thread.sleep(1000)
            resource.save(flush: true)
           }
        return resource
    }
}
