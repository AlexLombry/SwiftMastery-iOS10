//: Playground - noun: a place where people can play

import UIKit



//Animal Class

class Animal {
    
    //property - declared in a class
    var Name: String = "Initial Name"
    
    //initializer - used to set initial values to variables
    init() {
       feedMe()
    }
    
    //function - a set of instructions that perform an action when called
    func feedMe() {
        print("I want a banana")
        
    }

}

//variable - gets declared in methods or functions
var a: Int = 15

//creating objects from the Animal class
var tiger = Animal()
var wolf = Animal()

//changing the name of properties
wolf.Name = "Bobcat"
print(wolf.Name)
print(tiger.Name)

//calling the function using dot syntax
tiger.feedMe()


