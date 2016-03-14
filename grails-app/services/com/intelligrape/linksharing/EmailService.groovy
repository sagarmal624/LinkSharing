package com.intelligrape.linksharing

import LinkSharing.EmailDTO
import grails.transaction.Transactional

@Transactional
class EmailService {

    def sendUnreadItemsEmail() {
        List<User>users=User.list();
        List<String>emails=[]
        List<String>resource=[]
        users.each {user->
            emails.add(user.email)
            resource.add(user.readingItems.resource.topic)
        }
        String subject="This is your unread Topic Post"
        new EmailDTO(emails,resource,subject);

    }
}
