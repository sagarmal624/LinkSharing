package com.intelligrape.linksharing
import Enums.Visibility
import LinkSharing.ResourceSearchCo

class TopicController extends UtilController {
    def create()
    {

        render template:"/templates/Topic/create"
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


    def show(ResourceSearchCo co){
        co.name='J00aa0ava'
        co.visibility='PUBLIC'

        List<Resource>resources=Resource.search(co).list()

        println "----------------====>>>>"+resources*.description
        /*Topic topic=Topic.read(id)

        if(topic==null)
        {
            flash.error="Topic is not found with given id"
            redirect(action:"index",controller:"login")
        }else{
            if(topic.visibility==Visibility.PUBLIC)
            {
                render "Success"
            }else {
                Subscription subscription=Subscription.findByUserAndTopic(User.findByFirstname(session.user),topic)
                if(subscription){
                    flash.error="Topic is not private and not subscribe by loged in user"
                    forward(controller:"login",action:"index")
                }else {

                    render "success"
                }

            }
        }
*/
    }

}


