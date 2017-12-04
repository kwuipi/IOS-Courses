//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person{
    private var creditCard: [UnownedCreditCard]
    
    init (credits: [UnownedCreditCard]){
        creditCard = credits
    }
    
//    func removeCreditCard(){
//        creditCard = nil
//    }
}

class UnownedCreditCard {
    unowned var creditCard: CreditCard
    
    init(credit: CreditCard) {
        creditCard = credit
    }
}

class CreditCard{
    let number: String = "4242 4242 4242 4242"
    var person: Person?
    deinit {
        print("credit card removed")
    }
}
var credit: CreditCard? = CreditCard()
var me: Person? = Person(credits: [UnownedCreditCard(credit: credit!)])
credit?.person = me
credit = nil
me = nil
