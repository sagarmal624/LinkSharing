package com.intelligrape.linksharing
import Enums.Visibility
import LinkSharing.ResourceSearchCo

class TopicController {
    def create()
    {
        render template:"/templates/Topic/create"
    }

    def save(){
        String topicname=params.name;
        String visibility=params.visibility
      User user=User.findByEmail(session.email)
        Topic topic=new Topic(name:topicname,createdBy:user,visibility:Visibility.toEnum(visibility))

        if(!topic.validate())
        {

            flash.error="errorrr"
            render flash.error

        }else
        {

            topic.save(flush:true)
            flash.message="Record is saved"
             render view:"/linkSharing/dashboard"


        }
    }
    def show(long id, ResourceSearchCo co){

        List<Resource>resources=Resource.search(co).list()
        println "----------------====>>>>"+resources
        Topic topic=Topic.read(id)

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

    }



}

