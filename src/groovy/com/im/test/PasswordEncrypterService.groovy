package com.im.test

class PasswordEncrypterService {
   String encrypt(String password){
       return password.bytes.encodeBase64().toString()

   }
}
