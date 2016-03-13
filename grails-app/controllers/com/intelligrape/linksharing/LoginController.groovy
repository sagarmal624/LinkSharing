package com.intelligrape.linksharing
class LoginController {
def loginService
    def index() {
        if (!session.username) {
            render view: "/HomePage"
        } else
            forward(action:"dashboard" ,controller:"linkSharing")

    }
    def loginHandler() {
        String email = params.email;
        String password = params.password;
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            session.username =user.name
            session.email = user.email;
            session.user=user;
            forward(action:"dashboard",controller:"linkSharing");

        } else {
            redirect(action: "index", controller: "login", model: [user: user])
        }
    }
    def logout() {
        session.invalidate()
        redirect action: "index"
    }


}
