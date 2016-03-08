package com.intelligrape.linksharing

import LinkSharing.Custombean
import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCO
import LinkSharing.TopicVO
import org.springframework.beans.factory.annotation.Autowired

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

    def RatingProperties() {
        Resource resource = Resource.get(5)
        RatingInfoVO ratingInfoVO = resource.ratingInfo
        render "${ratingInfoVO}"
    }

    def show() {
        // RatingProperties();

        List<TopicVO> trendingTopics= Topic.getTrendingTopics()
        List concat=[]
        trendingTopics.each{
            concat.add "Id:${it.id},Name:${it.name},CreatedBy:${it.createdBy},Count:${it.countSubscription}"
        }


        render concat
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
    def saveRating() {
        Resource_Rating resource_rating;
        resource_rating= Resource_Rating.get(params.id)
        if (!resource_rating)
            resource_rating= new Resource_Rating(resource: Resource.get(params.long('id')), score: params.score, user: User.findByEmail(session.email)).save(flush: true)
        else{
            println "resource rating score----------------------->"
            resource_rating.score=params.int('score')
            println "resource rating score----------------------->"+resource_rating
            resource_rating.save(flush:true)
         }

    //    println resource_rating
        println "----------------------->" + params.score
        Map map = [message: resource_rating]
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)


    }

}
