package com.intelligrape.linksharing

class UserController {
  
    def index() {

    render view: "register"

//     render new User(username:"sagarmal624",firstname: "sagar",lastname:"shankhala",email: "sa122125@gmk.com",password: "125633",admin:false,active:true)
//             .addToTopics(new Topic(name:"Computer",visibility:Visibility.PUBLIC))
//             .save(flush:true,failOnError:true )
//User user=User.get(2)
  //   user.delete(flush: true)

   }
    def register()
    {
        def user = new User(params)

        if(user)
        {//        if (user.errors.hasFieldErrors('username')) {
//            user.errors.rejectValue("username","error.code.for.username",
//                    "Custom error message")
//            def errMsgList = user.errors.allErrors.collect{g.message([error : it])}
//            println "-------->>>>>>"+errMsgList

            if (user.validate()){
                flash.message="Successfull"
                user=user.save(flush: true)
            }
            else {
                flash.message="${user.errors.getFieldError('username').toString()}"
            }
     render(view:"/user/register")
           }
        else {
              flash.message="Error!"
            render(view: "/login/login")
        }
        //user.errors.getFieldError("username")
          //  println "----------------->"+user.errors.getFieldError("email")

    }

}
