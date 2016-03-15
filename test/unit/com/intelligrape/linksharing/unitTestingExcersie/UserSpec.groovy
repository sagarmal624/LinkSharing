package com.intelligrape.linksharing.unitTestingExcersie

import com.im.test.EmailService
import com.im.test.PasswordEncrypterService
import com.im.test.Product
import com.im.test.User
import spock.lang.Specification
import spock.lang.Unroll
import spock.util.mop.ConfineMetaClassChanges

class UserSpec extends Specification {
    @Unroll
    void "Full name valid"() {
        given:
        User user = new User()
        and:
        user.setFirstName(fname)
        user.setLastName(lname)
        expect:
        user.getFullName() == fullname
        where:
        fname   | lname | fullname
        null    | null  | null
        null    | null  | "Diwakar"
        "Sagar" | "Mal" | "Sagar Mal"
        123     | 321   | "Sagar Mal"
    }

    @Unroll
    void "Display name correct"() {
        given:
        User user = new User(firstName: fname, lastName: lname, gender: gender);

        expect:

        user.displayName() == displayname

        where:
        fname     | lname   | gender | displayname
        "Sagar" | "Mal" | "Male" | "MrSagar Mal"
        null      | null    | "Male" | null
        "Ajay"    | "Kumar" | null   | "MrAjay Kumar"

    }

    def "Password Valid"(String password) {
        setup:
        User user = new User();
        expect:
        user.isValidPassword(password) == true
        where:
        password << [null, "abc", "abcdefgh"]

    }

    @Unroll
    def "income group"() {
        setup:
        User user = new User(incomePerMonth: incomepm)

        expect:
        user.getIncomeGroup() == group

        where:
        incomepm | group
        1000     | "MiddleClass"
        6000     | "MiddleClass"
        20000    | "Higher MiddleClass"
        10000    | "MiddleClass"


    }

    def "Encrypt Password"() {
        setup:
        User user = new User()
        def mockedPasswordEncrypterService = Mock(PasswordEncrypterService)
        user.passwordEncrypterService = mockedPasswordEncrypterService
        mockedPasswordEncrypterService.encrypt(_ as String) >> "temppass"
        when:
        String output = user.encyryptPassword("abcd1234")

        then:
        output == "temppass"

    }

    def "Password Reset and Email sent"() {
        setup:
        User user = new User()
        and:
        def mockEmailService = Mock(EmailService)
        user.emailService = mockEmailService

        when:
        user.resetPasswordAndSendEmail()

        then:
        1 * mockEmailService.sendCancellationEmail(user, _ as String)
        user.password != "dummy"
    }

    void "Product Purchased"() {
        setup:
        Product product = new Product()
        User user = new User()

        when:
        user.purchase(product)

        then:
        user.purchasedProducts.size() > 0


    }

    void "Product Cancelled"() {
        setup:
        Product product = new Product()
        User user = new User()

        when:
        user.cancelPurchase(product)

        then:
        user.purchasedProducts.empty

    }


}
