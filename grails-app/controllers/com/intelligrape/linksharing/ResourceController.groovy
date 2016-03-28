package com.intelligrape.linksharing

import Enums.Visibility
import LinkSharing.ResourceSearchCO
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile

class ResourceController extends UtilController {
    ResourceService resourceService
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def timeLineData(){
        List<ReadingItem> readingItem=ReadingItem.createCriteria().list(){
            eq('user',User.get(2))
        }
        List<Resource>resources=Resource.createCriteria().list(){
            order('lastUpdated','desc');
        }
        List<Resource>dateWiseResources=[];
        readingItem.each{ReadingItem readingItem1->
            dateWiseResources.add(readingItem1?.resource)
        }
        List<Resource>timeLineResource=Resource.getAll(dateWiseResources.id.intersect(resources.id))


    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def update(long id, String url, String description) {
        Resource resource = Resource.get(id)
        if (url) {
            resource.url = url;
            resource.description = description;
            if (resource.save(flush: true))
                flash.message = "Record is Updated"
            else
                flash.message = "Record is not updated"
        } else {
            MultipartFile inputDocument=params.document
            if (inputDocument.originalFilename) {

                def applicationContext = grailsApplication.mainContext
                String basePath = applicationContext.getResource("/").getFile().toString()
                File documentFolder = new File("${basePath}/documentFolder")


                String extension = inputDocument.originalFilename.tokenize(".")?.last()
                String filePath = "${documentFolder}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
                File resourceDocument = new File(filePath)
                inputDocument.transferTo(resourceDocument)
                resource.filepath = resourceDocument.absolutePath
            }
            resource.description = description;
            if (resource.save(flush: true)) {
                flash.message = "Record is Updated"
            } else {
                flash.message = "Record is not Updated"
            }
        }
        Map map = [message: flash.message]
        Closure closure = { map }
        renderAsJSON(closure)
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def delete(long id) {
        boolean status = resourceService.deleteResource(id)
        status ?: (flash.error = "ResourceNotFound")
        forward(action: "dashboard", controller: "linkSharing")
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def search(ResourceSearchCO co) {
        Map map = [:]
        co.visibility = Visibility.PUBLIC.toString()
        List<Resource> resources = Resource.search(co).list()
        List<Resource> readResources = ReadingItem.findAllByUserAndIsRead(session.user, true)*.resource.intersect(resources)
        List<Topic> subscriptionList = Subscription.findAllByUser(session.user)*.topic.intersect(resources.topic.unique())
        map = [resources: resources, userId: resources.createdBy.id, topicsId: resources.topic.id, topics: resources.topic, readResources: readResources, subscriptionList: subscriptionList]
        Closure closure = { map }
        renderAsJSON(closure)
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def show(long id) {
Map map=resourceService.fetchShowData(id,session.user)
        render view: "/post/post", model:[trendingTopicsList: map.trendingTopicsList,score: map.score, resource: map.resource, totalSubscription: map.totalSubscription, totalTopics: map.totalTopics, totalPost: map.totalPost, SubscribedTopicList:map.SubscribedTopicList]
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    protected static addToReadingItems(Resource resource) {
        Topic resourceTopic = resource.topic
        List<Subscription> subscribedUser = Topic.getSubscribedUsers(resourceTopic.name)
        subscribedUser.each { user ->
            ReadingItem userReadingItem = new ReadingItem(user: user, resource: resource, isRead: (user.id == resource.createdBy.id))
            if (userReadingItem.validate()) {
                userReadingItem.save(flush: true)
            }
        }
    }


    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def saveRating() {
        ResourceRating resource_rating;
        resource_rating =resourceService.saveRating(params.long('id'),params.int('score'),session.user.email)
        Map map = [message: resource_rating]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def toppost() {
        Map map=resourceService.fetchTopPostData(params.time)
         map = [topposts: map.topposts, userId: map.userId]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}