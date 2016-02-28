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

       /*notLogin(controllerExclude:'login',action: '*')
                {
                before={
                    if(!session.username){
                        flash.error="Please Sign In...."
                        render view:"/grails-app/views/login/login"
                    }

                }

                }
    */}
}
