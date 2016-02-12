package com.intelligrape.linksharing

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
    }

    @Unroll
    void "Test User Validation"() {

        setup:
        User user = new User(username: uname, firstname: fname, lastname: lname, email: mail, password: pwd, admin: admn, active: active, dateCreated: dateCreated, lastUpdated: lastUpdated)
        println(user.properties)
        when:
        Boolean result = user.validate()
        then:
        result == valid
        where:
        uname         | fname      | lname       | mail           | pwd           | admn  | active | dateCreated    | lastUpdated    | valid
        "sagar"       | "sagar"    | "mal"       | "sa@gm.com"    | "amaxx"       | true  | true   | null           | null           | true
        "sagarmal624" | ""         | null        | "sa@gm.com"    | "sagar"       | false | false  | null           | new Date()     | false
        ""            | null       | "sagar  "   | null           | "12345670890" | true  | null   | null           | new Date()     | false
        "sagar"       | "sagarmal" | "shankhala" | "sagar@gm.com" | "125"         | false | true   | 02 - 01 - 1993 | 02 - 01 - 1993 | false
        ""            | " "        | " "         | ""             | ""            | null  | null   | null           | null           | false
        null          | null       | null        | null           | null          | null  | null   | null           | true           | false
    }
}
