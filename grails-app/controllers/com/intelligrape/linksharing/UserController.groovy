package com.intelligrape.linksharing

import LinkSharing.MailSender

import javax.mail.Message
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

class UserController {
    def index() {

        if (!session.username) {

            // render view: "register"
            render view: "/HomePage"
        } else
            render view: "/linkSharing/dashboard"

//     render new User(username:"sagarmal624",firstname: "sagar",lastname:"shankhala",email: "sa122125@gmk.com",password: "125633",admin:false,active:true)
//             .addToTopics(new Topic(name:"Computer",visibility:Visibility.PUBLIC))
//             .save(flush:true,failOnError:true )
//User user=User.get(2)
        //   user.delete(flush: true)

    }

    def sendMail() {
        List<String> to = [params.emailto];
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", params.subject, to, params.message);
        if (flag) flash.message = "Mail is sent Successfully" else flash.error = "Error During Mail Sending!"
        render view: "/linkSharing/dashboard"

    }

    def sendAttechMail() {
        List<String> to = [params.emailto];
        boolean flag = MailSender.sendAttechedMail("sagarmal624@gmail.com", "ubprpuraifiykixj", params.subject, to);
        if (flag) flash.message = "Mail is sent Successfully" else flash.error = "Error During Mail Sending!"
        render view: "/mailbox/mailbox"


    }

    def register() {
        def user = new User(params)
        if (user)
            if (user.validate()) {
                flash.message = "Record is Successfully Saved!"
                user.save(flush: true)
                render(view: "/HomePage")
            } else {

                forward(action: "index", model: [user: user])
            }
    }

    def show() {
        params.max = 20
        params.offset = params.offset ?: 0
        List<User> users = User.list(params)
        render([view: "../tables/data", model: [userCount: User.count(), users: users]])
    }

}