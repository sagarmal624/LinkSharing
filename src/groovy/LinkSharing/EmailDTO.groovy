package LinkSharing
import grails.validation.Validateable
@Validateable
class EmailDTO {
    String emailId;
    String message;
    String subject;
    static constraints = {
        emailId email: true, blank: false
        }
    public EmailDTO(List<String>emailList,List<String>messageResource,String subject) {
        List<String> to = [emailId];
        emailList.eachWithIndex {email,index->
            to=[email]
            message=messageResource[index]
            boolean flag = MailSender.sendMail("sagarmal624@gmail.com", "ubprpuraifiykixj", subject, to, message);

        }

          }
}

