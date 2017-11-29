//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle {
    var currentSpeed: Double = 0
    
    func description() -> String {
        return "Vehicle current speed is \(currentSpeed)"
    }
}

class Motorcyle: Vehicle {
    var seats: Int
    
    init(seats: Int) {
        self.seats = seats
    }
    
    override func description() -> String {
        return super.description() + " and has \(seats) seats"
    }
}

let myCar = Vehicle()
myCar.currentSpeed = 60
print(myCar.description())

let myMotorcycle = Motorcyle(seats: 2)
myMotorcycle.currentSpeed = 80
print(myMotorcycle.description())
