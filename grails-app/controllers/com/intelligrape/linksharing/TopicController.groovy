package com.intelligrape.linksharing
import Enums.Visibility
import LinkSharing.ResourceSearchCO
import grails.plugin.springsecurity.annotation.Secured

class TopicController extends UtilController {
    def topicService
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def updatevisibility(long userId,long topicId,String visibility )
    {
     flash.message=topicService.updateVisibility(userId,topicId,visibility)
    Map map = [message:flash.message,topicid:topicId]
    groovy.lang.Closure closure = { map }
    renderAsJSON(closure)
}
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def delete(long id)
    {
       topicService.deleteTopic(id)
       forward(action:"dashboard" ,controller:"linkSharing" )

    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])

    def save(){
        String message=topicService.saveTopic(params.name,params.visibility,session.user.email)
        Map map=[message:message]
        groovy.lang.Closure closure={ map}
        renderAsJSON(closure)
    }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def update(long id,String name){
         flash.message=topicService.updateTopic(id,name)
         Map map=[message:flash.message]
         groovy.lang.Closure closure={ map}
         renderAsJSON(closure)
     }
    @Secured(['ROLE_ROYALTY','ROLE_COMMON'])
    def show(ResourceSearchCO co){
        co.visibility=Enums.Visibility.PUBLIC.toString()

        List<Resource>resources=Resource.search(co).list()

    }


}


