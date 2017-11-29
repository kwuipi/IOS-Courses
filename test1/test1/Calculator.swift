//
//  Calculator.swift
//  test1
//
//  Created by Евгений Таран on 11/24/17.
//  Copyright © 2017 Zhenya Taran. All rights reserved.
//

import Foundation
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
