package com.intelligrape.linksharing

import Enums.UserStatus
import LinkSharing.DataTableCO
import LinkSharing.DataTableVO
import LinkSharing.MailSender
import LinkSharing.SearchCO
import LinkSharing.UserCO
import LinkSharing.UserServiceCo
import grails.converters.JSON

import org.codehaus.groovy.grails.web.binding.DataBindingUtils
import org.fusesource.jansi.AnsiRenderer
import org.springframework.web.multipart.MultipartFile

import javax.mail.Message
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

class UserController extends UtilController {
    def userService
//    def grailsApplication

    def index() {

        if (!session.username) {

            render view: "/HomePage"
        } else
            render view: "/linkSharing/dashboard"
    }

    def sendinvitation(String emailto, String topicname) {

       String message=g.render(template:"/templates/Topic/inviteTopicByEmail" ,model:[topicname:topicname,topicId:Topic.findByName(topicname).id] )
        boolean flag = userService.sendinvitation(emailto,topicname,message)


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
        boolean flag = userService.sendMail(emailto,subject,message)
        if (flag) flash.message = "Mail is sent Successfully"
        else
            flash.error = "Error During Mail Sending!"
        forward(action: "dashboard", controller: "linkSharing")
    }
    def register() {
        def applicationContext = grailsApplication.mainContext
        String basePath = applicationContext.getResource("/").getFile().toString()
        File userImageFolder = new File("${basePath}/userImageFolder")
        File source = new File("${basePath}/images/2.png")
        UserServiceCo userServiceCo=new UserServiceCo(firstname:params.firstname,lastname:params.lastname,email:params.email,username: params.username,password:params.password,confirmPassword:params.confirmPassword ,imagePath:source.absolutePath)
        MultipartFile inputImage=params.photo;
        User user=userService.registerUser(userServiceCo,inputImage,userImageFolder.absolutePath)
        String message = "This Email-id or Username Already Exits!"
        if (user) {
            session.username = user.name;
            session.user = user;
            session.email = user.email;
            forward(action: "dashboard", controller: "linkSharing");
        }
        Map map = [message: message]
        groovy.lang.Closure closure = { map }
            renderAsJSON(closure)
    }

    def update() {
             UserServiceCo userServiceCo=new UserServiceCo(email:session.email,imagePath:"",firstname:params.firstname,lastname:params.lastname)
           User user=userService.update(userServiceCo,params.photo,grailsApplication.config.userImageFolder)

        if (user) {
            flash.message = "Record is Successfully updated"
            session.user = user;
            session.username = user.name
            session.email = user.email;
        } else
            flash.error = "Record is not updated due to some Validation"
        forward(action: "profile", controller: "linkSharing")

    }

    def forgotPassword(String email) {

        User user = userService.forgotPassword(email)
        if (user) {
            flash.message = "New Password is sent on your Email"
        } else
            flash.error = "Account is not found"

        redirect(action: "loadmainpage", controller: "linkSharing");

    }

    static String getRandomPassword() {
        return new Random().nextInt(100000);
    }

    def activeUser(long id, boolean activeness) {
        User user = userService.activeUser(id,activeness)
        flash.message = "Record not updated"
        if (user)
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
                        flash.message = "Record is Successfully updated"
                    else
                        flash.error = "Password And ConfirmPassword not match"
                }
            } else {
                flash.error = "Account not found"
            }
        } else {
            flash.error = "Please Enter Your Email-id"

        }

        forward(action: "profile", controller: "linkSharing")


    }

    def renderFromDirectory(long id) {
        User user =userService.renderFromDirectory(id)
        String filePath = user.imagePath
        File file = new File(filePath)
        byte[] imageBytes = file.bytes
        response.setHeader("Content-length", imageBytes.length.toString())
        response.outputStream << imageBytes
        response.outputStream.flush()
    }

    def show() {
//        println("params >> "+params.dump())
//        println "-->>>${params.length}"
//        println "--->${map}"
//        DataTableVO dataTableVO=userService.fetchUsersList(params.int("length"),params.int("start"))
//        println("data >>> "+dataTableVO.properties)
//        render(dataTableVO as JSON)
   render view:"/tables/adminTable"
    }

    def finduser(String mailidOrUname) {
        flash.message = "User is not found"
        User user = userService.findUser(mailidOrUname)
        if (user) {
            flash.message = "EmailId or UserName Already Exist"
        }
        Map map = [message: flash.message]
        println "-------------------map==" + map;
        groovy.lang.Closure closure = { map }
        renderAsJSON(closure)

    }
    def list(DataTableCO userSearchCO) {
        if (session.user?.admin) {
            List<User> users = User.search(userSearchCO).list(max: userSearchCO.max, offset: userSearchCO.offset, order: userSearchCO.order, sort: userSearchCO.sort)
            render view: '/tables/adminTable', model: [users: users, userCount: User.count(),SubscribedTopicList:Subscription.findAllByUser(session.user)]
        } else {
            redirect(uri: "/tables/adminTable")
        }
    }
   def toogleActive() {
        long id = params.long("id")
        User user = User.get(id)
        if (user.active) {
            user.active = false
        } else {
            user.active = true
        }
        user.save(flush: true)
        forward(controller: 'user', action: 'list')
    }
}