package com.intelligrape.linksharing
class LoginController {
def loginService
    def index() {
        if (!session.username) {
            forward(action:"loadmainpage",controller:"linkSharing"  )
        } else
            forward(action:"dashboard" ,controller:"linkSharing")
    }
    def loginHandler() {
        String email = params.email;
        String password = params.password;
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            if(user.active) {
                session.username = user.name
                session.email = user.email;
                session.user = user;

                forward(action: "dashboard", controller: "linkSharing");
            }
            else {
                flash.error="Your Account is not Active.Please Contact to Admin"
                redirect(action: "index", controller: "login", model: [user: user])

            }
        } else {
            flash.error="Invalid UserName or Password"
            redirect(action: "index", controller: "login", model: [user: user])
        }
    }
    def logout() {
        session.invalidate()
        redirect action: "index"
    }


}
