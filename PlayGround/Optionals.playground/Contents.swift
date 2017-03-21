//: Playground - noun: a place where people can play

import UIKit

// optional syntax is the question mark (?)
// it may or may not contain a value
// its purpose is to prevent an empty variable from being used
// An empty or nil variable will crash the program
// someVar? : Swift create a wrapper for this variable
// Work for var, not let

var optionalString: String?

// Do this only if you are sure there's gonna be a value in it
var implicitlyUnwrapped: Double!

optionalString = "You can see me"

// We absolutely now this variable have a value
let nowUnwrapped = optionalString!

// Optional binding
var optional2: String?
if let unwrapped = optional2 {
    print("There is a value : \(unwrapped)")
} else {
    print("Contains nil")
}

// Optional binding
var optional3: String?
optional3 = "I'm here"
if let unwrapped1 = optional3 {
    print("There is a value : \(unwrapped1)")
} else {
    print("Contains nil")
}

implicitlyUnwrapped = 2.6



