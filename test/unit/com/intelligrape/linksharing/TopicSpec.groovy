package com.intelligrape.linksharing

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Topic)
class TopicSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    @Unroll
    void "Test Topic Validation"() {

        setup:

        Topic topic = new Topic(name: name, visibility: visibility, dateCreated: dateCreated, lastUpdated: lastUpdated);
        when:
        println(topic.properties)
        Boolean result = topic.validate();
        then:
        result == valid

        where:

        name          | visibility         | dateCreated | lastUpdated | valid
        "sagars"      | Visibility.PRIVATE | null        | null        | true

        "sagarmal624" | Visibility.PUBLIC  | null        | null        | true
        ""            | Visibility.PRIVATE | ""          | "null"      | false
        "sagar"       | Visibility.PUBLIC  | null        | null        | true
        null          | Visibility.PUBLIC  | null        | null        | false
        "sagar"       | Visibility.PRIVATE | null        | null        | true
        "sagar"       | Visibility.PUBLIC  | null        | null        | true


    }


}
