package com.im.test


class Transaction {

    TransactionStatus status = TransactionStatus.SUCCESSFUL

    EmailService emailService = new EmailService()

    void sell(Product product, User user) {
        if (user.balance && user.balance >= product.price) {
            user.balance -= product.price
            user.purchase(product)
        } else {
            throw new SaleException("Not enough account balance")
        }
    }

    void cancelSale(Product product, User user) {
        String productName = product.name
        user.balance += (product.price - calculateDiscount(product, user))
        user.cancelPurchase(product)
        emailService.sendCancellationEmail(user, productName)
    }

    BigDecimal calculateDiscount(Product product, User user) {
        BigDecimal discount = 0
        if (product.discountType != DiscountType.NONE) {

            if (product.discountType == DiscountType.PRIVELLEGE_ONLY && user.isPrivellegedCustomer) {
                discount = product.price * 30 / 100
            } else {
                discount = product.price * 10 / 100
            }
        }
        return discount
    }

    List<Product> getAllPopularProducts(){
        List<Product> popularProducts = Product.getCurrentProducts()
        return popularProducts.findAll{it.isPopular}

    }


}
