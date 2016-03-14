package com.intelligrape.linksharing

import LinkSharing.EmailDTO


class MyJob {
 def emailService
    static triggers = {
        cron cronExpression: "0 0/1 * 1/1 * ? *"
//        cron cronExpression: " 0 0 1 ? * MON *"
    }
    def group = "MyGroup"

    def execute(){
//   emailService.sendUnreadItemsEmail();
    }
}
