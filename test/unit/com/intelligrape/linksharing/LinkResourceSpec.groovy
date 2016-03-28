package com.intelligrape.linksharing

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(LinkResource)
class LinkResourceSpec extends Specification {


    @Unroll
    void "test for Link Resource"() {
        setup:
        LinkResource link_resource = new LinkResource(url: url, description: description)
        print(link_resource.properties)
        when:
        Boolean result = link_resource.validate()
        String linkname = link_resource.toString()
        then:
        result == valid
        checklink == linkname.equals(link)

        where:

        url                         | description                 | valid | link                        | checklink
        "https://www.google.co.in/" | "i am from google.com "     | true  | "https://www.google.co.in/" | true
        "www.gmail.com"             | "i am from gmail.com"       | false | "www.gmail.com"             | true
        null                        | null                        | false | "hello"                     | false
        13                          | 15                          | false | ""                          | false
        "  "                        | "hello sagaarv "            | false | " "                         | false
        "www.google.com"            | ""                          | false | "www.google.com"            | true
        "https://www.google.co.in/" | null                        | false | "https://www.google.co.in/" | true
        null                        | "https://www.google.co.in/" | false | "null"                      | false
        "https://www.google.co.in/" | 15                          | false | ""                          | false

    }

}
