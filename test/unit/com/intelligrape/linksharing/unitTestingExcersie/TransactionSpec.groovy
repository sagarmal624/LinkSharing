package com.intelligrape.linksharing.unitTestingExcersie

import com.im.test.DiscountType
import com.im.test.EmailService
import com.im.test.Product
import com.im.test.SaleException
import com.im.test.Transaction
import com.im.test.User
import spock.lang.Shared
import spock.lang.Specification
import spock.lang.Unroll

class TransactionSpec extends Specification {

    @Shared
            transaction = new Transaction()

    void "Sell subtracts the balance of a user by the price of the product and adds product to the purchased products"() {
        setup:
        Product product = new Product(price: 100)
        User user = new User(balance: 200)

        when:
        transaction.sell(product, user)

        then:
        user.balance == 100.toBigDecimal()
    }


    void "Improvement #1 Sell subtracts the balance of a user by the price of the product and adds product to the purchased products"() {
        given:
        Product product = new Product(price: 100)

        and:
        User user = new User(balance: 200)

        when:
        transaction.sell(product, user)

        then:
        user.balance == 100.toBigDecimal()
    }


    void "Improved #2 Sell subtracts the balance of a user by the price of the product and adds product to the purchased products"() {
        given:
        Product product = new Product(price: 100)

        and:
        User user = new User(balance: 200)

        expect:
        !user.isPrivellegedCustomer
        product.discountType == DiscountType.NONE

        when:
        transaction.sell(product, user)

        then:
        user.balance == 100.toBigDecimal()
    }


    void "An exception is thrown if user's balance is not enough"() {
        given:
        Product product = new Product(price: 100)

        and:
        User user = new User(balance: 50)

        when:
        transaction.sell(product, user)

        then:
        def e = thrown(SaleException)
        e.message == "Not enough account balance"
    }

    void "Improvement #1 An exception is thrown if user's balance is not enough"() {
        given:
        Product product = new Product(price: 100)

        and:
        User user = new User(balance: balance)

        when:
        transaction.sell(product, user)
        then:
        def e = thrown(SaleException)
        e.message == "Not enough account balance"
        where:
        balance << [50, 0]
    }
    @Unroll("An exception is thrown when #description")
    void "Improvement #2 An exception is thrown if user's balance is not enough"() {
        given:
        Product product = new Product(price: 100)
        and:
        User user = new User(balance: balance)
        when:
        transaction.sell(product, user)
        then:
        def e = thrown(SaleException)
        e.message == "Not enough account balance"
        where:
        balance << [50, 0]
        description = balance == 50 ? 'less than product cost' : 'user has no balance'
    }

    void "thrown exception"() {
        given: "Given a user with a name"
        User user = new User()

        and: "A product with a given price"
        Product product = new Product()

        and: "Transaction"
        Transaction transaction = new Transaction()

        when: "A product is being sold"
        transaction.sell(product, user)

        then: "The transaction fails due to sale exception"
        thrown(SaleException)

        where:
        balance | productPrice
        null    | 10


    }

    void "Sale Cancelled"() {
        given:
        Product product = new Product(name: "product 1", price: 1000)

        and:
        User user = new User(balance: 1000)

        and:
        Transaction transaction = new Transaction()

        and:
        def mockedEmailService = Mock(EmailService)
        user.emailService = mockedEmailService

        when:
        transaction.cancelSale(product, user)

        then:
        mockedEmailService.sendCancellationEmail(user, _ as String)

    }

    BigDecimal "Discount Calculated"() {
        given:
        Product product = new Product(discountType: DiscountType.PRIVELLEGE_ONLY, price: price)

        and:
        User user = new User(isPrivellegedCustomer: true)

        and:
        Transaction transaction = new Transaction()

        when:
        int discount = transaction.calculateDiscount(product, user)

        then:
        discount > 0
        discount < price

        where:
        price << [1000, 2000, 3000, 4000]

    }

    List "Popular product"(){
        given:
     Transaction transaction = new Transaction()

        when:
        List list = transaction.getAllPopularProducts()

        then:
        !list.empty
    }
}
