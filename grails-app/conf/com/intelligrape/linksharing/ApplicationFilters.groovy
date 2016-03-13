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

//       notLogin(controller:'linkSharing',action:'loadmainpage',invert:true)
//                {
//                before={
//                    if(!session.username){
//                        flash.error="Please Sign In...."
//                         redirect(controller:"linkSharing",action:"loadmainpage")
//                          return false
//                    }
//
//                  }
//             }

    }
}
