package com.intelligrape.linksharing

import grails.plugin.springsecurity.annotation.Secured

class LinkController extends ResourceController {
    def linkService
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def save() {
        String url = params.url;
        String description = params.description
        String topicname = params.topicname
        Resource resource = linkService.save(topicname, description, url, session.user.email)
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
