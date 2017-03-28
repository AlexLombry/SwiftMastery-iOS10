// Playground - noun: a place where people can play

import UIKit


//Super or Parent class
class Car {
    
    var name: String = "Initial Name"
    
    init() {
        
    }
    
    func drive () {
        print("I am driving")
    }
    
}


var a = Car()
a.name = "Corvette"



//Subclass
class Bus : Car {
    

    override init() {
        
        super.init()
        super.name = "Test"
    }
    var schoolbus : String = "Yellow"
    
    func race(){
        print("I am driving very fast")
     }
    
    override func drive() {
        
        print("I am driving and texting")
        super.drive()
       
    }
    
}

//instance of the subclass
var b = Bus()
b.name
b.drive()
















