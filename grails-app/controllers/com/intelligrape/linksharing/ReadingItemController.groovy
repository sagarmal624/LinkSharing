package com.intelligrape.linksharing

class ReadingItemController {
    def readingItemService
    def changeIsRead(Long id, Boolean isRead) {
             readingItemService.changeIsRead(session.email,id,isRead)
             forward(action: "inbox", controller: "linkSharing")
    }
    def inbox() {
        List<Resource> unreadResources =readingItemService.fetchInboxData(session.email,seesion.user)
        render unreadResources.flatten()
    }
}
