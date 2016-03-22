package com.intelligrape.linksharing
import Enums.Visibility
import LinkSharing.ResourceSearchCO

class TopicController extends UtilController {
    def topicService
    def create()
    {
   render template:"/templates/Topic/create"
    }
    def updatevisibility(long userId,long topicId,String visibility )
    {
     flash.message=topicService.updateVisibility(userId,topicId,visibility)
    Map map = [message:flash.message,topicid:topicId]
    groovy.lang.Closure closure = { map }
    renderAsJSON(closure)
}
    def delete(long id)
    {
       topicService.deleteTopic(id)
       forward(action:"dashboard" ,controller:"linkSharing" )

    }
    def save(){
        String message=topicService.saveTopic(params.name,params.visibility,session.email)
        Map map=[message:message]
        groovy.lang.Closure closure={ map}
        renderAsJSON(closure)
    }
     def update(long id,String name){
         flash.message=topicService.updateTopic(id,name)
         Map map=[message:flash.message]
         groovy.lang.Closure closure={ map}
         renderAsJSON(closure)
     }
    def show(ResourceSearchCO co){
        co.visibility=Enums.Visibility.PUBLIC.toString()

        List<Resource>resources=Resource.search(co).list()

    }


}


