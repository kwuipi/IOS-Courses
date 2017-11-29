//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
public func biarygap( for number: Int) -> Int {
    var max_gap = 0
    var current_gap = 0
    for (i, digit) in arrayOfDigits.enumerated() {
        if digit == "1" {
            while arrayOfDigits[i+1] == "0" {
                current_gap += 1
            }
            if max_gap > maxGap {
                maxGap = nowGap
            }
        }
        else {
            continue
        }
        
    }
    return max_gap
}
