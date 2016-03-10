package com.intelligrape.linksharing

import LinkSharing.Custombean
import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCO
import LinkSharing.TopicVO
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.multipart.MultipartFile

class ResourceController extends UtilController {

    def delete(long id) {
        log.info "befor delete the resource"
        def resource = Resource.load(id)
        println "--------------resource object----->" + resource
        if (resource == null) {
            flash.error = "ResourceNotFound"
            render flash.error
            // forward(action:"index",controller:"login")
        } else {
            resource.delete(flush: true)

            render "deleted"

        }
    }

    //TODO: Improper use of Enum in code.
    def search(ResourceSearchCO co) {
        Map map = [:]
        //co.topicName=params.topicName;
        //       println "topic name->>>>>>>>>>>>>>>>>>>>"+co.description;
        co.visibility = 'PUBLIC'
        List<Resource> resources = Resource.search(co).list()

        map = [resources: resources]
        Closure closure = { map }
        renderAsJSON(closure)
    }

    def RatingProperties(long userid, long resourceid) {
        Resource resource = Resource.get(resourceid)
        RatingInfoVO ratingInfoVO = resource.ratingInfo
        return ratingInfoVO
    }

    def show(long id) {
        Resource_Rating resource_rating = Resource_Rating.findByResourceAndUser(Resource.get(id), session.user);
        Map totalResourceAndSubscription = User.getTotalResourceAndSubscription(session.user)

        int score;
        if (!resource_rating?.score) {
            score = 2;
        } else
            score = resource_rating?.score

        List<TopicVO> trendingTopics = Topic.getTrendingTopics()
//        List concatTopic=[]
//        trendingTopics.each{
//            concatTopic.add (new TopicVO(id:${it.id},name:${it.name},createdBy:${it.createdBy},countSubscription:${it.countSubscription},countPost:${it.countPost}))
//        }
        render view: "/post/post", model: [trendingTopicsList: trendingTopics, score: score, resource: resource_rating?.resource, totalSubscription: totalResourceAndSubscription.totalSubscription, totalTopics: totalResourceAndSubscription.totalTopic, totalPost: totalResourceAndSubscription.totalPost]

    }

    //TODO: Use CO .
    def save() {

        String url = params.url;
        String description = params.description
        String topicname = params.topicname

        //     println ">>>>>>>>>>>>>>>>>>>>>>"+params
        Resource resource = new Link_Resource(topic: Topic.findByName(topicname), createdBy: User.findByEmail(session.email), description: description, url: url)
        if (resource.validate()) {
            Thread.sleep(1000)
            resource.save(flush: true)
            flash.message = "Link Resource is Created with ${url}"

            //render view:"/linkSharing/dashboard"

        } else {
            flash.message = "Record is not saved due to not Valid URL"
            //render flash.error
        }
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

    def savedocument(String description, String topic) {
        MultipartFile inputDocument = params.document
        String extension = inputDocument.originalFilename.tokenize(".")?.last()
        String filePath = "${grailsApplication.config.documentFolder}/${UUID.randomUUID().toString()}${extension ? ".${extension}" : ""}"
        File resourceDocument = new File(filePath)
        inputDocument.transferTo(resourceDocument)
        User createdBy = session.user

        Resource resource = new Document_Resource(filepath: resourceDocument.absolutePath, description: description, topic: Topic.findByName(topic), createdBy: createdBy)
        if (resource.validate()) {
            flash.message = "File is Successfully Uploaded"
            resource.save(flush:true)
            ResourceController.addToReadingItems(resource)
        } else {
            flash.message = "Resource could not be saved"
        }
        //redirect(controller: "linkSharing", action: "dashboard")
        Map map = [message: flash.message]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)




    }
    protected static addToReadingItems(Resource resource)
    {
        Topic resourceTopic = resource.topic
        List<Subscription> subscribedUser = Topic.getSubscribedUsers(resourceTopic.name)
        subscribedUser.each {user->
            ReadingItem userReadingItem = new ReadingItem(user:user,resource:resource,isRead:(user.id==resource.createdBy.id))
            if(userReadingItem.validate())
            {
                userReadingItem.save(flush:true)
            }
        }
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

    def saveRating() {
        Resource_Rating resource_rating;
        resource_rating = Resource_Rating.get(params.id)
        if (!resource_rating)
            resource_rating = new Resource_Rating(resource: Resource.get(params.long('id')), score: params.score, user: User.findByEmail(session.email)).save(flush: true)
        else {
            println "resource rating score----------------------->"
            resource_rating.score = params.int('score')
            println "resource rating score----------------------->" + resource_rating
            resource_rating.save(flush: true)
        }

        //    println resource_rating
        println "----------------------->" + params.score
        Map map = [message: resource_rating]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)


    }

    def toppost() {
        println "working-------------------------" + params.time
        List<TopicVO> topposts;
        if (params.time == "Today")
            topposts = Resource.getToppost()
        else {
            Date currentDate = new Date()
            if (params.time == "Yesterday") {
                topposts = Resource.getToppost(currentDate, currentDate - 1)

            } else if (params.time == "Week Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 7)
            } else if (params.time == "Month Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 29)
            } else if (params.time == "Year Before") {
                topposts = Resource.getToppost(currentDate, currentDate - 365)
            }
        }
        Map map = [topposts: topposts]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

}
