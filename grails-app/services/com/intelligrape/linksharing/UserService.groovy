package com.intelligrape.linksharing

import LinkSharing.DataTableVO
import LinkSharing.MailSender
import LinkSharing.UserServiceCo
import grails.transaction.Transactional
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class UserService {

    boolean sendinvitation(String emailto, String topicname,String message) {

        List<String> to = [emailto];
        String subject = "Invitation to Join Topic on LinkSharing"

        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        return flag
    }
    boolean sendMail(String emailto, String subject, String message) {
        List<String> to = [emailto];
        boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);
        return flag;
    }
    User registerUser(UserServiceCo userServiceCo,MultipartFile inputImage,String homePath){
        User user;
        if (inputImage?.originalFilename) {
            String extention = inputImage.originalFilename.tokenize(".")?.last()
            String filePath = "${homePath}/${UUID.randomUUID().toString()}${extention ? ".${extention}" : ""}"
            File userImage = new File(filePath)
            inputImage.transferTo(userImage)
//            userServiceCo.imagePath=userImage.absolutePath
           user = new User(userServiceCo.getProperties())
           user.imagePath=userImage.absolutePath;


        }else
            user = new User(userServiceCo.getProperties())
        if (user) {
            if(user.validate()) {
                user.active = true
                user=user.save(flush:true,failOnError:true)
                Role common = new Role(authority: 'ROLE_COMMON').save(flush:true)
                UserRole.create(user, common)
             }
         }
        return user?:null

    }
    User activeUser(long id,boolean activeness){
        User user = User.get(id)
        user.active = activeness

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
        //    ilike('')
        }
        DataTableVO dataTableVO= new DataTableVO(data:users,draw:1,recordsFiltered:users.size(),recordsTotal: users.size()  )
        dataTableVO?:null
    }

    User forgotPassword(String email,String newPassword,String message){
        User user = User.findByEmail(email)
        if (user) {

            user.password = newPassword;

            user.save(flush: true)
            sendMail(email, "Regarding to Forgot Password",message)
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


        user=user.save(flush: true)
      user?:null
    }
}