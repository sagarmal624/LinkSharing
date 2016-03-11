package com.intelligrape.linksharing

class LoginController {

    def index() {
        if (!session.username) {
            render view: "/HomePage"
        } else
            forward(action:"dashboard" ,controller:"linkSharing")

    }

    //TODO: Use messgae.properties.
    def loginHandler() {
        String email = params.email;
        String password = params.password;
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            session.username = user.name;
            session.email = user.email;
            session.user=user;
       //     render(view: '/linkSharing/dashboard')
            forward(action:"dashboard",controller:"linkSharing");

        } else {
            flash.error = "Invalid UserName or Password"
            redirect(action: "index", controller: "login", model: [user: user])
        }
    }

    //TODO: Log basic informations.
    def logout() {
        session.invalidate()
        redirect action: "index"
    }


}
