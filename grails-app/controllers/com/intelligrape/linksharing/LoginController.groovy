package com.intelligrape.linksharing

class LoginController {

    def index() {
        if (!session.username) {
            render view: "/HomePage"
        } else
            render view: "/linkSharing/dashboard"

    }

    //TODO: Use messgae.properties.
    def loginHandler() {
        String email = params.email;
        String password = params.password;
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            session.username = user.name;
            session.email = user.email;
            render(view: '/linkSharing/dashboard')
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
