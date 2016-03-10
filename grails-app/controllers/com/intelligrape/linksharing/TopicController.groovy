package com.intelligrape.linksharing
import Enums.Visibility
import LinkSharing.ResourceSearchCO

class TopicController extends UtilController {
    def create()
    {

        render template:"/templates/Topic/create"
    }
    def updatevisibility(long userId,long topicId,String visibility )
    {

      Topic topic=Topic.findByCreatedByAndId(User.get(userId),topicId)
      topic.visibility=Visibility.toEnum(visibility)
      if(topic.save(flush:true)){
        flash.message="Visibility is successfully Updated"
    } else {
        flash.message="Visibility is not updated"
    }
    Map map = [message: flash.message,topicid:topicId]
    groovy.lang.Closure closure = { map }
    renderAsJSON(closure)


}
    def save(){
        Map map=[:]
        println("SAVE >>>>>>>>")
        String topicname=params.name;
        String visibility=params.visibility
        User user=User.findByEmail(session.email)
        Topic topic=new Topic(name:topicname,createdBy:user,visibility:Visibility.toEnum(visibility))
        println("Callled *** ")
        if(!topic.validate())
        {
            flash.message="This Topic name is already Exist!.Please Change Topic Name!"
            /* renderAsJSON {
                  flash.error
           }*/


        }else
        {

            Thread.sleep(500)
            flash.message="Topic is created with ${topicname} name successfully!"
            topic=topic.save(flush: true)

        }
        map=[message:flash.message]
        groovy.lang.Closure closure={ map}
        renderAsJSON(closure)
    }


    def show(ResourceSearchCO co){
        co.name='J00aa0ava'
        co.visibility='PUBLIC'

        List<Resource>resources=Resource.search(co).list()

        println "----------------====>>>>"+resources*.description

    }

}


