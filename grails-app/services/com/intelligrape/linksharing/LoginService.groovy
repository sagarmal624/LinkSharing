package com.intelligrape.linksharing

import grails.transaction.Transactional

@Transactional
class LoginService {

    User isUserExist(String email, String password) {
        User user = User.findByEmailAndPassword(email, password)
        return user
    }
}
