//: Playground - noun: a place where people can play

import UIKit

for num in 1...12 {
    print("\(num) times 12 is \(num * 12)")
}


let base = 2
let power = 10
var answer = 1

for _ in 1...10 {
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")



// array iterating

let dogNames = ["Fido", "Rex", "Spot", "jack"]

for dogName in dogNames {
    print("Hello \(dogName)!")
}


let products = ["iPhone": 499, "iPad": 899.00, "iMac": 2099.00]

for (name, price) in products {
    print("Apple's \(name) cost $\(price)")
}


// While style
var myString = "Hello Swift"
var counter = 0

while counter < 5 {
    print("\(counter) - \(myString)")
    counter += 1
}


var repeatCounter = 0

repeat {
    print("The repeat while loop will always execute its code at least once")
    repeatCounter += 1
} while repeatCounter < 12

// Do while style (for php users)

