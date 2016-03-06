package com.intelligrape.linksharing

class LinkSharingController {
    def showResource(){
             println"--------------->>>>>id="+params.id
        render view:"/util/showResource",model:[id:params.id]
    }
    def Home()
    {
        render view:"/linkSharing/dashboard"

    }
    def dashboard() {
        render view: "dashboard.gsp"
    }

    def trendingPost() {
        render view: "/util/widgets"
    }

    def accountSetting() {
        render view: "/AccountSetting/general"
    }

    def admin() {
        render view: "/tables/data"

    }

    def inbox() {
        render view: "/mailbox/mailbox"
    }

    def calender() {
        render view: "/util/calendar"

    }

    def profile() {

        render view: "/UserProfileAndLockScreen/profile"
    }

    def lockscreen() {
        render view: "/UserProfileAndLockScreen/lockscreen"

    }

    def composemail()
    {
        render view: "/mailbox/compose"

    }
    def readmail()
    {
        render view: "/mailbox/read-mail"
    }
    def mainpage(){
        render view:"../index"
    }
}
