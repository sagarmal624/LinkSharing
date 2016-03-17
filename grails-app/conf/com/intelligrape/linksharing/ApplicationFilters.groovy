package com.intelligrape.linksharing

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
//        consolecheck(uri:'/console/**'){
//            before={
//                if(session.username){
//                    flash.error="Please Sign In...."
//                    redirect(controller:"linkSharing",action:"loadmainpage")
//                    return false
//                }
//            }
//        }
       notLogin(controller:'*',controllerExclude:'assets|user|login',action:'*',actionExclude:'loadmainpage|toppost|renderFromDirectory|loadmainpage|loginHandler|index|register')
                {
                before={
                    println "before action-------${session.username}-----------"
                    if(!session.username){
                        flash.error="Please Sign In...."
                         redirect(controller:"linkSharing",action:"loadmainpage")
                        return false
                    }
                }
             }

    }
}
