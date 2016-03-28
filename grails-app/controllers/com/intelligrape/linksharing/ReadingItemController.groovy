package com.intelligrape.linksharing

import grails.plugin.springsecurity.annotation.Secured

class ReadingItemController {
    def readingItemService
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def changeIsRead(Long id, Boolean isRead) {
             readingItemService.changeIsRead(session.user.email,id,isRead)
             forward(action: "inbox", controller: "linkSharing")
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def inbox() {
        List<Resource> unreadResources =readingItemService.fetchInboxData(session.user.email,seesion.user)
        render unreadResources.flatten()
    }
}
