package LinkSharing

import javax.activation.DataHandler
import javax.activation.DataSource
import javax.activation.FileDataSource
import javax.mail.*
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeBodyPart
import javax.mail.internet.MimeMessage
import javax.mail.internet.MimeMultipart

class MailSender {
    public static boolean sendMail(String from,String password,String message,List<String> to,String emailbody)
    {

        String  host="smtp.gmail.com";
        Properties prop=System.getProperties();
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host",host);
        prop.put("mail.smtp.user", from);
        prop.put("mail.smtp.password",password);
        prop.put("mail.smtp.port", 587);
        prop.put("mail.smtp.auth","true");
        Session session=Session.getDefaultInstance(prop);
        MimeMessage msg=new MimeMessage(session);
        try
        {
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] toAddress=new InternetAddress[to.size()];
            for(int i=0;i<to.size();i++)
            {
                toAddress[i]=new InternetAddress(to[i]);
            }
            for(int i=0;i<toAddress.length;i++)
            {
                msg.setRecipient(Message.RecipientType.TO, toAddress[i]);
            }
            msg.setSubject(message);
            msg.setContent(" "+"<span>${emailbody}</span>","text/html");
            Transport tr=session.getTransport("smtp");
            tr.connect(host,from,password);
            tr.sendMessage(msg, msg.getAllRecipients());
            tr.close();
            return true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public static boolean sendAttechedMail(String from,String pass,String msg,List<String> to)
    {
        String host="smtp.gmail.com";
        Properties prop=System.getProperties();
        prop.put("mail.smtp.starttls.enable","true");
        prop.put("mail.smtp.host", host);
        prop.put("mail.smtp.user", from);
        prop.put("mail.smtp.password", pass);
        prop.put("mail.smtp.port", 456);
        prop.put("mail.smtp.auth", "true");

        Session session=Session.getDefaultInstance(prop);
        MimeMessage message=new MimeMessage(session);
        try
        {
            message.setFrom(new InternetAddress(from));
            InternetAddress[] ia=new InternetAddress[to.size()];
            for(int i=0;i<ia.length;i++)
                ia[i]=new InternetAddress(to[i]);
            for(int i=0;i<ia.length;i++)
                message.setRecipient(Message.RecipientType.TO, ia[i]);
            message.setSubject("this is just testing of java mail code");
            BodyPart bp=new MimeBodyPart();
            bp.setText("this is first part of mail");
            Multipart mp=new MimeMultipart();
            mp.addBodyPart(bp);
            bp=new MimeBodyPart();
            String file="/home/sagar/Downloads/mail/sendmail.txt";
            String file1="/home/sagar/Downloads/mail/sendmail.txt";

            DataSource ds=new FileDataSource(file);
            bp.setDataHandler(new DataHandler(ds));
            bp.setFileName(file);
            mp.addBodyPart(bp);
            bp=new MimeBodyPart();


            ds=new FileDataSource(file1);
            bp.setDataHandler(new DataHandler(ds));
            bp.setFileName(file1);
            mp.addBodyPart(bp);
            message.setContent(mp);
            Transport tr=session.getTransport("smtp");
            tr.connect(host,from,pass);
            tr.sendMessage(message,message.getAllRecipients());
            tr.close();
            return true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }


}
