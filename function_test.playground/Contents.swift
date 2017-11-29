
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func add(_ firstNumber: Int ,_ secondNumber: Int)->Int{
    return firstNumber + secondNumber
}
add(4, 1 )


func substract(_ first: Int , _ second: Int) ->Int{
    return first - second
}
substract(10, 2)


/*func swap1( _ first:  Int , _ second:  Int ) ->(Int, Int){
    return (second ,first )
}
var x = 13
var y = 15
let z = swap1 (x,y)*/
func swap( _ first: inout Int , _ second: inout Int ) {
    let a = first
    first = second
    second = a
    
}
var s = 13
var c = 15
swap (&s,&c)


class Calculator {
    class func add(_ first: Int ,_ second: Int)->Int{
        return first + second
    }
    func substract(_ first: Int , _ second: Int) ->Int{
        return first - second
    }
}

let calc = Calculator()
let cal2 = Calculator()
cal2.substract(10, 8)
Calculator.add(1,2)
