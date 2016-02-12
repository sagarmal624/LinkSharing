package com.intelligrape.linksharing

class UserController {

    def index() {

     render new User(username:"sagarmal624",firstname: "sagar",lastname:"shankhala",email: "sa122125@gmk.com",password: "125633",admin:false,active:true)
             .addToTopics(new Topic(name:"Computer",visibility:Visibility.PUBLIC))
             .save(flush:true,failOnError:true )

   }
}
