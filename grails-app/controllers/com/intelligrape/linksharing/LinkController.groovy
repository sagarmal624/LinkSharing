package com.intelligrape.linksharing

class LinkController extends ResourceController{

    def save() {
        String url = params.url;
        String description = params.description
        String topicname = params.topicname
        Resource resource = new Link_Resource(topic: Topic.findByName(topicname), createdBy: User.findByEmail(session.email), description: description, url: url)
        if (resource.validate()) {
            Thread.sleep(1000)
            resource.save(flush: true)
            ResourceController.addToReadingItems(resource)
            flash.message = "Link Resource is Successfully Created "
        } else {
            flash.message = "Record is not saved due to not Valid URL"
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }

}
