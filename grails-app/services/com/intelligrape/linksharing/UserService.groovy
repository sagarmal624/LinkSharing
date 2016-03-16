package com.intelligrape.linksharing

import LinkSharing.DataTableVO
import LinkSharing.MailSender
import LinkSharing.UserServiceCo
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class UserService {

    boolean sendinvitation(String emailto, String topicname) {
        List<String> to = [emailto];
        String subject = "Invitation to Join Topic on LinkSharing"
        String message = "<p>On behalf of To The New Digital Enterprise, it is my pleasure to extend the invitation to join our" +
                " new topic <h2><a href='#'>${topicname}</a><h2>" +
                "</p>"
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        return flag
    }

    boolean sendMail(String emailto, String subject, String message) {
        List<String> to = [emailto];
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        return flag;

    }
    User registerUser(UserServiceCo userServiceCo,MultipartFile inputImage,String homePath){
        String message = "This Email-id or Username Already Exits!"

        if (inputImage.originalFilename) {
            String extention = inputImage.originalFilename.tokenize(".")?.last()
            String filePath = "${homePath}/${UUID.randomUUID().toString()}${extention ? ".${extention}" : ""}"
            File userImage = new File(filePath)
            inputImage.transferTo(userImage)
            userServiceCo.imagePath = userImage.absolutePath
        } else
            userServiceCo.imagePath = "/home/sagar/Desktop/LinkAndDocumentSharing/LinkSharing/web-app/images/2.png"
        User user = new User(userServiceCo.getProperties())
        if (user) {
            if (user.validate()) {
                user.active = true
                user=user.save(flush: true)
            }
         }
        return user?:null

    }
    User activeUser(long id,boolean activeness){
        User user = User.get(id)
        user.active = activeness
        user.confirmPassword = user.password;
        user=user.save(flush: true)
       user?:null
    }
    User renderFromDirectory(long id){
        User user = User.read(id)
              user?:null
    }
    User findUser(String mailidOrUname)
    {
        User.findByEmailOrUsername(mailidOrUname, mailidOrUname)?:null

    }
    DataTableVO fetchUsersList(int max,int offset){
        List<User> users = User.createCriteria().list(max:max, offset:offset){
            projections{
                property('username');
                property('email');
                property('firstname');
                property('lastname');
                property('admin');
                property('active');

            }
        }
        DataTableVO dataTableVO= new DataTableVO(data:users,draw:1,recordsFiltered:users.size(),recordsTotal: users.size()  )
        dataTableVO?:null
    }

    User forgotPassword(String email){
        User user = User.findByEmail(email)
        if (user) {
            String newPassword = UserController.getRandomPassword();
            user.password = newPassword;
            user.confirmPassword = newPassword;
            user.save(flush: true)
            sendMail(email, "Regarding to Forgot Password", "<h2>Your New Password to Login in LinkSharing is:" + newPassword + "</h2>")
         }
        user?:null

    }
    User update(UserServiceCo userServiceCo, MultipartFile inputImage,String homePath) {


        User user = User.findByEmail(userServiceCo.email)
        //MultipartFile inputImage = params.photo
        if (inputImage.originalFilename) {
            String extention = inputImage.originalFilename.tokenize(".")?.last()
            String filePath = "${homePath}/${UUID.randomUUID().toString()}${extention ? ".${extention}" : ""}"
            File userImage = new File(filePath)
            inputImage.transferTo(userImage)
            userServiceCo.imagePath = userImage.absolutePath
            user.imagePath = userServiceCo.imagePath
        }
        if (userServiceCo.firstname)
            user.firstname = userServiceCo.firstname;

        if (userServiceCo.lastname)
            user.lastname = userServiceCo.lastname;

        user.confirmPassword = user.password
        user=user.save(flush: true)
      user?:null
    }
}