//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Binary Operator (between two target example 1 + 2)
let a = 1 + 2

// Unary / Prefix operator
-a

// Ternary
var ternary = true

var string1 = "String 1 gers returned"
var string2 = "String 2 gets returned"

ternary ? string1 : string2

// Assignment Operator
var d = 8
var e = 6

d = e

// Arithmetic
3 + 3
6 - 2
2 * 4
8 / 2

"Hello" + " World"

// Remainder

9 % 4
-9 % 4

var i = 0

// Unary Minus

let two = 2
let minusTwo = -two

two + minusTwo

var c = 1

// Compound assignement
c += 2
c -= 1
c *= 3
c /= 2

// Comparaison

var f = 3
c == f

c != f

c > f
c < f
c <= f
c >= f

let name = "John"

if name == "John" {
    print ("is true")
} else {
    print("is false")
}


let gpsDir = "north"
// Optional, may or may not contain a value
var paperMapDir: String?

// Nil coalescing operator (paperMapDir first to be evaluated)
var navigate = paperMapDir ?? gpsDir

// Range Operators

// between 0 and 4 including 4 (see run's 5 times (0,1,2,3, 4))
for index in 0...4 {
    print("\(index) times 3 in \(index * 3)")
}

// Half open range operator (0 to 4 without 4 (0,1,2,3))
for index in 0..<4 {
    print("\(index) times 3 in \(index * 3)")
}
let isAllowed = false

if !isAllowed {
    print("Access Granted")
}






