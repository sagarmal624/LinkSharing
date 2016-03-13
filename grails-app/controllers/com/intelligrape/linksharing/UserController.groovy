package com.intelligrape.linksharing

import LinkSharing.MailSender
import LinkSharing.SearchCO
import LinkSharing.UserCO
//import grails.doc.BoldFilter
import org.codehaus.groovy.grails.web.binding.DataBindingUtils
import org.springframework.web.multipart.MultipartFile

import javax.mail.Message
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

class UserController extends UtilController {
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

    def sendinvitation(String emailto, String topicname) {
        List<String> to = [params.emailto];
        String subject = "Invitation to Join Topic on LinkSharing"
        String message = "<p>On behalf of To The New Digital Enterprise, it is my pleasure to extend the invitation to join our" +
                " new topic <h2><a href='#'>${params.topicname}</a><h2>" +
                "</p>"
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        if (flag)
            flash.message = "Mail is sent Successfully"
        else
            flash.message = "Error During Mail Sending!"

        Map map = [message: flash.message]
        println "-------------------map==" + map;
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

    def sendMail(String emailto, String subject, String message) {
        List<String> to = [emailto];
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        if (flag) flash.message = "Mail is sent Successfully"
        else

            flash.error = "Error During Mail Sending!"
        forward(action: "dashboard", controller: "linkSharing")
    }

    def sendAttechMail() {
        List<String> to = [params.emailto];
        boolean flag = MailSender.sendAttechedMail("sagarmal624@gmail.com", "ubprpuraifiykixj", params.subject, to);
        if (flag) flash.message = "Mail is sent Successfully"
        else
            flash.error = "Error During Mail Sending!"
        render view: "/mailbox/mailbox"
    }

    def register() {
        String message = "This Email-id or Username Already Exits!"
        MultipartFile inputImage = params.photo
        if (inputImage.originalFilename) {
            String extention = inputImage.originalFilename.tokenize(".")?.last()
            String filePath = "${grailsApplication.config.userImageFolder}/${UUID.randomUUID().toString()}${extention ? ".${extention}" : ""}"
            File userImage = new File(filePath)
            inputImage.transferTo(userImage)
            params.imagePath = userImage.absolutePath
        } else
            params.imagePath = "/home/sagar/Desktop/LinkAndDocumentSharing/LinkSharing/web-app/images/2.png"
        User user = new User(params)
        if (user) {
            if (user.validate()) {
                message = "Record is Successfully Saved!"
                user.save(flush: true)
                session.username = User.findByEmail(user.email).name;
                session.email = user.email;
                session.user = user;
                forward(action: "dashboard", controller: "linkSharing");
            }
        } else {

            Map map = [message: message]
            println "-------------------map==" + map;
            groovy.lang.Closure closure = { map }
            renderAsJSON(closure)

        }

    }

    def update() {
        User user = User.findByEmail(session.email)
        MultipartFile inputImage = params.photo
        if (inputImage.originalFilename) {
            String extention = inputImage.originalFilename.tokenize(".")?.last()
            String filePath = "${grailsApplication.config.userImageFolder}/${UUID.randomUUID().toString()}${extention ? ".${extention}" : ""}"
            File userImage = new File(filePath)
            inputImage.transferTo(userImage)
            params.imagePath = userImage.absolutePath
            user.imagePath = params.imagePath
        }
        user.firstname = params.firstname;
        user.lastname = params.lastname;
        user.confirmPassword = user.password
        if (user.save(flush: true, failOnError: true)) {
            flash.message = "Record is Successfully updated"
            session.user = user;
            session.username = user.name
        } else
            flash.error = "Record is not updated due to some validation"
        forward(action: "accountSetting", controller: "linkSharing")

    }

    def forgotPassword(String email) {

        User user = User.findByEmail(email)
        if (user) {
            String newPassword = new Random().nextInt(100000);
            user.password = newPassword;
            user.confirmPassword = newPassword;
            user.save(flush: true)
            sendMail(email, "Regarding to Forgot Password", "<h2>Your New Password to Login in LinkSharing is:" + newPassword + "</h2>")
            flash.message = "New Password is sent on your Email"
        } else
            flash.error = "Account is not found"

        redirect(action: "loadmainpage", controller: "linkSharing");

    }

    def activeUser(long id, boolean activeness) {
        User user = User.get(id)
        user.active = activeness
        user.confirmPassword = user.password;
        flash.message = "Record not updated"

        if (user.save(flush: true))
            flash.message = "Successfully Updated"


        Map map = [message: flash.message]
        println "-------------------map==" + map;
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }

    def updatePassword() {
        if (params.email.equals(session.email)) {
            User user = User.findByEmail(params.email)
            if (user) {
                if (params.password) {
                    user.password = params.password
                    user.confirmPassword = params.confirmPassword;

                    if (user.save(flush: true))
                        flash.message1 = "Record is Successfully updated"
                    else
                        flash.error1 = "Password And ConfirmPassword not match"
                }
            } else {
                flash.error1 = "Account not found"
            }
        }

        else
        {
            flash.error1 = "Please Enter Your Email-id"

        }
        forward(action: "accountSetting", controller: "linkSharing")
    }

    def renderFromDirectory(long id) {
        User user = User.read(id)
        String filePath = user.imagePath
        File file = new File(filePath)
        byte[] imageBytes = file.bytes
        response.setHeader("Content-length", imageBytes.length.toString())
        response.outputStream << imageBytes
        response.outputStream.flush()
    }

    def show() {
        List<User> users = User.list()
        render([view: "../tables/data", model: [users: users]])
    }

    def finduser(String mailidOrUname) {
        flash.message = "User is not found"
        User user = User.findByEmailOrUsername(mailidOrUname, mailidOrUname)
        if (user) {
            flash.message = "EmailId or UserName Already Exist"
        }

        Map map = [message: flash.message]
        println "-------------------map==" + map;
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }
}