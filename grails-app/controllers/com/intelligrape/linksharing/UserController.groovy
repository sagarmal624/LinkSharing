package com.intelligrape.linksharing

import LinkSharing.MailSender
import LinkSharing.SearchCO
import LinkSharing.UserCO
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
//        MultipartFile multipartFile = params.photo
//        println("->>>>>file uploadinggggggg>>>>>>>>>>>>>>>>"+multipartFile?.originalFilename)
        //User user = new User(co.properties)
  //      user.properties = params;
        String message = "This Email-id or Username Already Exits!"
       // println "flash---------------------"+user.properties



        MultipartFile inputImage = params.photo
        String extention = inputImage.originalFilename.tokenize(".")?.last()
        String filePath = "${grailsApplication.config.userImageFolder}/${UUID.randomUUID().toString()}${extention?".${extention}":""}"
        File userImage = new File(filePath)
        inputImage.transferTo(userImage)
        params.imagePath = userImage.absolutePath
        User user = new User(params)

        println "flash---------------------"+user.validate();
        //user.save(flush: true,failOnError:true);
        if (user){
            if (user.validate()) {
                message="Record is Successfully Saved!"
                //Thread.sleep(500)
                user.save(flush:true)
                session.username = user.name;
                session.email = user.email;
                session.user=user;
                forward(action:"dashboard",controller:"linkSharing");
            }
        }else {

            Map map =[message:message]
            println "-------------------map=="+map;
            groovy.lang.Closure closure = { map }
            renderAsJSON(closure)

        }

    }
    def renderFromDirectory(long id)
    {
        User user = User.read(id)
        String filePath = user.imagePath
        File file = new File(filePath)
        byte[] imageBytes = file.bytes
        response.setHeader("Content-length",imageBytes.length.toString())
        response.outputStream << imageBytes
        response.outputStream.flush()
    }

    def show(SearchCO searchCO) {
        params.max = 20
        params.offset = params.offset ?: 0
        List<User> users = User.list(params)
        render([view: "../tables/data", model: [userCount: User.count(), users: users]])
    }
  def finduser(String mailidOrUname)
  {   flash.message="User is not found"
      User user=User.findByEmailOrUsername(mailidOrUname,mailidOrUname)
       if(user) {
           flash.message = "EmailId or UserName Already Exist"
       }

      Map map =[message:flash.message]
      println "-------------------map=="+map;
      groovy.lang.Closure closure = { map }
      renderAsJSON(closure)

  }
}