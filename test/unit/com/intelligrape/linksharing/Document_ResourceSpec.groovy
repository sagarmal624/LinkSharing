package com.intelligrape.linksharing

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Document_Resource)
class Document_ResourceSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    @Unroll
    void "test for Document Resource"() {

        setup:
        Document_Resource document_resource = new Document_Resource(filepath: filepath, description: description)
        println(document_resource.properties)
        when:
        Boolean result = document_resource.validate()
        then:
        result == valid
        where:
        sno | filepath                | description         | valid
        1   | "/home/sagar/sagar.txt" | "hello sagar"       | true
        2   | null                    | "how are you"       | false
        3   | 123                     | ""                  | false
        4   | ""                      | null                | false
        5   | "/home/sagar"           | "i am fine and you" | true
        6   | null                    | null                | false
        7   | 13                      | 15                  | false
        8   | ""                      | ""                  | false

    }

}

