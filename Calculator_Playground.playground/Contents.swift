//: Playground - noun: a place where people can play

import UIKit
enum CaclutorOperation {
    case plus
    case minus
}
class Calculator {
    
    var result: Int?
    var inputValue: Int = 0
    var nextOperation: CaclutorOperation?
    
    func add(_ first: Int ,_ second: Int)->Int{
        result = first + second
        print(result!)
        return result!
    }
    func substract(_ first: Int , _ second: Int) ->Int{
        result = first - second
        print(result!)
        return result!
    }
    func nextNumber(_ nextNumber: Int) ->Int{
        switch nextOperation!{
        case .plus:
            add(inputValue,nextNumber)
        
        case .minus:
            substract(inputValue, nextNumber)
        }
        nextOperation = nil
        inputValue = result!
        return result!
    }
}
var cal = Calculator()
cal.inputValue = 10
cal.nextOperation = .plus
cal.nextNumber(20)
cal.result
