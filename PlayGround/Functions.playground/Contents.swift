//: Playground - noun: a place where people can play

import UIKit

// function that adds 3 str objects together and returns a new string

func greeting(name: String) -> String {
    let greet = "Hello, " + name + "!"
    let hola = ", Hola, \(name) !"
    return greet + hola
}

greeting(name: "Alex")


// Math func example

func divide(num1: Double, num2: Double) -> Double {
    return num1 / num2
}

divide(num1: 35.14, num2: 12.8)

func multiply(num1: Double, num2: Double) -> Double {
    return num1 * num2
}

multiply(num1: 356, num2: 8)

// With and without return type

func countLetters(word: String) -> Int {
    print(word)
    return word.characters.count
}

countLetters(word: "Where are you")

// return void but the print show something
func printLetters(word: String) {
    print(word)
}

printLetters(word: "Salut")


// Variadic parameters

func average(someNums: Double...) -> Double {
    var total: Double = 0
    
    for num in someNums {
        total += num
    }
    
    return total / Double(someNums.count)
}


average(someNums: 273,282,278,378,640,837)

func multiplySomeNumbers(num1: Int = 4, num2: Int = 6) -> Int {
    return num1 * num2
}

multiplySomeNumbers()

multiplySomeNumbers(num1: 34)

// returning a tuple

func smallLarge(arrayOfInts: [Int]) -> (min: Int, max: Int)? {
    
    if arrayOfInts.isEmpty { return nil }
    
    var minimum = arrayOfInts[0]
    var maximum = arrayOfInts[0]
    
    for value in arrayOfInts[1..<arrayOfInts.count] {
        if value < minimum {
            minimum = value
        } else if value > maximum {
            maximum = value
        }
    }
    
    return (minimum, maximum)
}


let orderedSize = smallLarge(arrayOfInts: [1,3,6,3,8,19])

var emptyArray = [Int]()

if let orderedSize = smallLarge(arrayOfInts: emptyArray) {
    print("Minimum : \(orderedSize.min)")
}


// Inout params

// function that uses inout parameters to alter variables that are defined outside the function

func swaptwo(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var val1 = 29
var val2 = 300

// like php reference
// Only work with var, let cannot be change even with inout params
swap(&val1, &val2)

print("value 1 is : \(val1) and value 2 is : \(val2)")


// Nested functions

// first return (-> (Int)) is saying the enclosing func returns a nested func

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    return backwards ? stepBackward : stepForward
}

var currentValue = -6
let nearToZero = chooseStepFunction(backwards: currentValue > 0)

while currentValue != 0 {
    print(currentValue)
    currentValue = nearToZero(currentValue)
}























































