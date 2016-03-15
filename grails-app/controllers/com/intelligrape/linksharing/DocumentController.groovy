package com.intelligrape.linksharing

import org.springframework.web.multipart.MultipartFile

class DocumentController extends ResourceController {

    def saveDocument(String description, String topic) {
        MultipartFile inputDocument = params.document
        String extension = inputDocument.originalFilename.tokenize(".")?.last()
        String filePath = "${grailsApplication.config.documentFolder}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
        File resourceDocument = new File(filePath)
        inputDocument.transferTo(resourceDocument)
        User createdBy = session.user
        Thread.sleep(300);
        Resource resource = new Document_Resource(filepath: resourceDocument.absolutePath, description: description, topic: Topic.findByName(topic), createdBy: createdBy)
        if (resource.validate()) {

            resource.save(flush: true)
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
        Resource resource = Resource.read(id)
        String filePath = resource.filepath
        File file = new File(filePath)
        byte[] documentBytes = file.bytes
        response.setHeader("Content-length", documentBytes.length.toString())
        response.outputStream << documentBytes
        response.outputStream.flush()
    }

}
