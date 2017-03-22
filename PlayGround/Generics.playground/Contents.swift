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

// * Custom generic types (class struct enum)

// generic stack
/*
struct StackOfStrings {
    var objects = [String]()
    
    // mutating because they need to modify the struct array given
    mutating func push(object: String) {
        objects.append(object)
    }
    
    mutating func pop() -> String {
        return objects.removeLast()
    }
}
*/

// Generic struct
struct StackOfObjects <Element>{
    var objects = [Element]()
    
    // mutating because they need to modify the struct array given
    mutating func push(object: Element) {
        objects.append(object)
    }
    
    mutating func pop() -> Element {
        return objects.removeLast()
    }
}

// instance of the struct
var stringStack = StackOfObjects<String>()
stringStack.push(object: "France")
stringStack.push(object: "Allemagne")
stringStack.push(object: "Belgique")

print(stringStack)

let fromtheTop = stringStack.pop()
print(stringStack)


var intStack = StackOfObjects<Int>()
intStack.push(object: 2)
intStack.push(object: 4)
intStack.push(object: 6)
intStack.push(object: 8)
print(intStack)

intStack.pop()
print(intStack)

var textField = StackOfObjects<UITextField>()
var sliderStack = StackOfObjects<UISlider>()

// * Extending a Generic
extension StackOfObjects {
    var top: Element? {
    return objects.isEmpty ? nil : objects[objects.count - 1]
    }
}

print(intStack.top as Any)

if let topObject = intStack.top {
    print("The top object on the stack is \(topObject).")
}























