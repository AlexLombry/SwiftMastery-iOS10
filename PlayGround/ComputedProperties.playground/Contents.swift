//: Playground - noun: a place where people can play

import UIKit

// Can be declared in a class, struct, enumeration, use them anywhere in your code.

// They do not store any value inside and net get and set


struct Math {
    var width = 10.0
    var height = 10.0
    
    var area: Double {
        get {
            return width * height
        }
        set(newArea) {
            let squareRoot = sqrt(newArea)
            width = squareRoot
            height = squareRoot
        }
// // Shorthand version
//        set {
//            let squareRoot = sqrt(newValue)
//            width = squareRoot
//            height = squareRoot
//        }
    }
}

// Empty init
var squared = Math.init()
squared.width
squared.height
squared.area

squared.area = 50

squared.width
squared.height
squared.area


// Memberwise init
var squared2 = Math.init(width: 20, height: 20)
squared2.area


// Property Observers
// There are just for the setter (willSet and didSet keyword)
// Only used with var

// willSet is called just before a value is stored
// didSet is called just after a value is stored


class MyBank {
    var bankBalance: Double = 0.0 {
        // to avoid newValue default name, we can put our variable name instead
        willSet(newBalance) {
            print("About to set the bank account to \(newBalance)")
        }
        didSet {
            if bankBalance > oldValue {
                print("Added \(bankBalance - oldValue)")
            }
        }
    }
}

var bank = MyBank()

// show by how much the count raise
bank.bankBalance = 500

bank.bankBalance = 3700.87

bank.bankBalance = 187


































