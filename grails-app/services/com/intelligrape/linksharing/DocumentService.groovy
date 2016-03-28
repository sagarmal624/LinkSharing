package com.intelligrape.linksharing

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class DocumentService {

    Resource save(String description, String topic, User user, String homePath, MultipartFile inputDocument) {
        String extension = inputDocument.originalFilename.tokenize(".")?.last()
        String filePath = "${homePath}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
        File resourceDocument = new File(filePath)
        inputDocument.transferTo(resourceDocument)
        User createdBy = user
        Thread.sleep(300);
        Resource resource = new DocumentResource(filepath: resourceDocument.absolutePath, description: description, topic: Topic.findByName(topic), createdBy: createdBy)
        if (resource.validate()) {

            resource = resource.save(flush: true)
        }
        return resource;
    }
    Resource downloadResourceDocument(long id)
    {
       return Resource.read(id)
    }
}
