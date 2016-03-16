package com.intelligrape.linksharing

import org.springframework.web.multipart.MultipartFile

class DocumentController extends ResourceController {
    def documentService

    def saveDocument(String description, String topic) {
        Resource resource = documentService.save(description, topic, session.user, grailsApplication.config.documentFolder, params.document)
        if (resource) {
            ResourceController.addToReadingItems(resource)
            flash.message = "File is Successfully Uploaded"
        } else {
            flash.message = "Document is not Uploaded due to Some Error"
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

    def downloadDocument(long id) {
        Resource resource = documentService.downloadResourceDocument(id)
        String filePath = resource.filepath
        File file = new File(filePath)
        byte[] documentBytes = file.bytes
        response.setHeader("Content-length", documentBytes.length.toString())
        response.outputStream << documentBytes
        response.outputStream.flush()
    }

}
