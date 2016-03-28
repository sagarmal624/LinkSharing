package com.intelligrape.linksharing

import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.context.SecurityContextHolder

class ApplicationFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
//    sessionCheck(controller:"*",action:'*',controllerExclude:'login'){
//        before={
//            if(!session.user) {
//                GrailsUser user = SecurityContextHolder.getContext().getAuthentication().getPrincipal()
//                println "username----------->"+user
//                    session.user=User.findByUsername(user.username)
//
//            }
//
//        }
//    }
//        consolecheck(uri:'/console/**'){
//            before={
//                if(session.username){
//                    flash.error="Please Sign In...."
//                    redirect(controller:"linkSharing",action:"loadmainpage")
//                    return false
//                }
//            }
//        }
       notLogin(controller:'*',controllerExclude:'assets|user|login',action:'*',actionExclude:'auth|toppost|renderFromDirectory|loadmainpage|loginHandler|index|register')
                {
                before={
                    if(!session.user){
                        GrailsUser user = SecurityContextHolder.getContext().getAuthentication().getPrincipal()
                        session.user=User.findByUsername(user.username)
//                           println"iiiiiiiii>>>>>>sussername-"+ session.user.properties;
//                         redirect(controller:"linkSharing",action:"loadmainpage")
//                        return false
                    }
                }
             }

    }
}
