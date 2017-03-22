//: Playground - noun: a place where people can play

import UIKit

func swap<T>(value1: inout T, value2: inout T) {
    let temp = value1
    value1 = value2
    value2 = temp
}

var int1 = 50
var int2 = 100

swap(value1: &int1, value2: &int2)

print(int1)
print(int2)

var someStringValue = "UPPERCASE VALUE"
var anotherStringValue = "lowercase value"

swap(&someStringValue, &anotherStringValue)

print(someStringValue)
print(anotherStringValue)

var arrayFirstNames = ["bill", "bob", "mike"]
var arrayLastNames = ["smith", "jackson", "harris"]

swap(&arrayFirstNames, &arrayLastNames)

print(arrayFirstNames)
print(arrayLastNames)


