package com.intelligrape.linksharing

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Link_Resource)
class Link_ResourceSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    @Unroll
    void "test for Link Resource"() {
        setup:
        Link_Resource link_resource = new Link_Resource(url: url, description: description)
        print(link_resource.properties)
        when:
        Boolean result = link_resource.validate()
        then:
        result == valid
        where:

        url                         | description                 | valid
        "https://www.google.co.in/" | "i am from google.com "     | true
        "www.gmail.com"             | "i am from gmail.com"       | false
        null                        | null                        | false
        13                          | 15                          | false
        "   "                       | "hello sagaarv "            | false
        "www.google.com"            | ""                          | false
        "https://www.google.co.in/" | null                        | false
        null                        | "https://www.google.co.in/" | false
        "https://www.google.co.in/" | 15                          | false

    }

}
