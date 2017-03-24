//: Playground - noun: a place where people can play

import UIKit

var arrayOfInts = [Int]()

// Declared with type inference
let arrayOfNames = ["Bob", "Jim", "John"]
print("Names array contains \(arrayOfNames.count) elements")

// Declared with type annotation
let arrayOfMoreNames: Array<String> = ["Frank", "Tom", "Joe"]
print("More names array contains \(arrayOfMoreNames.count) elements")

arrayOfInts.append(7)

// empty the array (still array of Int)
arrayOfInts = []

var fourDoublesArray = Array(repeating: 3.14, count: 4)

// Adding 2 arrays together

var fiveDoubles = Array(repeating: 2.1, count: 5)
var nineDoubles = fourDoublesArray + fiveDoubles

// Declared type
var cars: [String] = ["Ford", "Peugeot", "Honda"]
// Inferred type
var moreCars = ["Fiat", "Mazda"]

var allCars = cars + moreCars

if moreCars.isEmpty {
    print("No elements")
} else {
    print("There's elements")
}

moreCars.append("Volkswagen")
moreCars += ["Renault"]

// Subscript syntax

var secondItem = moreCars[1]

moreCars [0...2] = ["GTO", "Charger", "Jeep"]
print(moreCars)

moreCars.insert("Yello VM Bug", at: 2)

let muscleCars = moreCars.remove(at: 0)

// runtime error if your try to remove undefined index

let familyCar = moreCars.removeLast()
print(moreCars)

for item in moreCars {
    print(item)
}

// Enumerated returns the value and index from an array
for (index, value) in moreCars.enumerated() {
    print("Item \(index + 1): \(value)")
}

if let match = moreCars.index(of: "Jeep") {
    moreCars.remove(at: match)
}

print(moreCars)


// Multi Dimensional Array

var multiArray: [[String]] = [
    ["10", "20", "30"],
    ["1", "2", "3"]
]

for column in multiArray {
    for row in column {
        print("\(row) : (column)")
    }
}


// Dictionary in swift it's like array key value in php
var dictionary: [Int : String]

var dictionary2: [Int : String] = [1 : "value 1", 2: "value 2"]

var dictionary3 = [1 : "value 1", 2: "value 2"]

var frenchNumbers = [Int: String]()
frenchNumbers = [:]
frenchNumbers = [1: "Un", 2: "Deux", 3: "Trois", 4: "Quatre", 5: "Cinq"]

var mutable = ["someKey" : "someValue"]
let immutable = ["someKey" : "somevalue"]

if let oldValue = frenchNumbers.updateValue("Deux - is two", forKey: 2) {
    print("\(oldValue) \(frenchNumbers[2]!)")
}
print(frenchNumbers)

// Dictionary is array with key value

// To remove a key pair is to set key to nul

frenchNumbers[1] = nil
print(frenchNumbers)

if let removedValue = frenchNumbers.removeValue(forKey: 2) {
    print("The removed numbers name is \(removedValue)")
} else {
    print("Nothing to remove")
}

for (k, v) in frenchNumbers {
    print("\(k) : \(v)")
}

// Get only keys
for numberKey in frenchNumbers.keys {
    print("French number key: \(numberKey)")
}

// Get only values
for numberValue in frenchNumbers.values {
    print("French number key: \(numberValue)")
}

// Create array with dictionary key value
let numberKeyArray = [Int](frenchNumbers.keys)
let numberValueArray = [String](frenchNumbers.values)

for key in frenchNumbers.keys.sorted(by: <) {
    print("French number key: \(key)")
}

for value in frenchNumbers.values.sorted(by: >) {
    print("French number key: \(value)")
}


