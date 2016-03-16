package com.intelligrape.linksharing

class LinkController extends ResourceController {
    def linkService
    def save() {
        String url = params.url;
        String description = params.description
        String topicname = params.topicname
        Resource resource = linkService.save(topicname, description, url, session.email)
        if (resource) {
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
