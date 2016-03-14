package com.intelligrape.linksharing

import grails.transaction.Transactional

@Transactional
class LoginService {

    User isUserExist(String email, String password) {
        println "inside sericve---------------->"+email+"==========="+password
        User user = User.findByEmailAndPassword(email, password)
        println "----------after calling---${user.properties}"
        return user
    }
}
