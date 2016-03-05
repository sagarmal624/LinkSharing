package com.intelligrape.linksharing

import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCo
import LinkSharing.TopicVO

class ResourceController extends UtilController{
    def index() {

    }
    def delete(long id) {
        log.info "befor delete the resource"
        def resource = Resource.load(id)
        println "--------------resource object----->"+resource
        if (resource==null) {
            flash.error="ResourceNotFound"
            render flash.error
            // forward(action:"index",controller:"login")
        } else {
            resource.delete(flush:true)

            render "deleted"

        }
    }
    def search(ResourceSearchCo co)
    {
        Map map=[:]
        co.visibility='PUBLIC'
        List<Resource>resources=Resource.search(co).list()

        map=[resources:resources]
        groovy.lang.Closure closure={ map}
        renderAsJSON(closure)


    }
    def RatingProperties() {
        Resource resource = Resource.get(5)
        RatingInfoVO ratingInfoVO = resource.ratingInfo
        render "${ratingInfoVO}"
    }
    def show()
    {
        // RatingProperties();

        List<TopicVO> trendingTopics= Topic.getTrendingTopics()
        List concat=[]
        trendingTopics.each{
            concat.add "Id:${it.id},Name:${it.name},CreatedBy:${it.createdBy},Count:${it.count}"
        }
        render concat
    }

    def save(){

        String url=params.url;
        String description=params.description
        String topicname=params.topicname

        Resource  resource= new Link_Resource(topic:Topic.findByName(topicname),createdBy:User.findByEmail(session.email),description:description,url: url)

        if(resource.validate()) {
            resource.save(flush: true)
            flash.message="Succefully Saved"

            render view:"/linkSharing/dashboard"
        }else
            flash.error="Validaion Error"

        render flash.error
    }

}
