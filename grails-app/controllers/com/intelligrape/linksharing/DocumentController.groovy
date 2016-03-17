package com.intelligrape.linksharing

import org.springframework.web.multipart.MultipartFile

class DocumentController extends ResourceController {
    def documentService

    def saveDocument(String description, String topic) {
        def applicationContext = grailsApplication.mainContext
        String basePath = applicationContext.getResource("/").getFile().toString()
        File documentFolder = new File("${basePath}/documentFolder")

     if(description && topic && params.document) {
        Resource resource = documentService.save(description, topic, session.user,documentFolder.absolutePath, params.document)
        if (resource) {
            ResourceController.addToReadingItems(resource)
            flash.message = "File is Successfully Uploaded"
            } else {
            flash.message = "Document is not Uploaded due to Some Error"
        }
      }
        else {
         flash.message="File,Description or Topic Name Can't be Blank"
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
