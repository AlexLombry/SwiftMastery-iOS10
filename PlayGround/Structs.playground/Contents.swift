//: Playground - noun: a place where people can play

import UIKit

// Struct is a type like Double, String, Int ...


struct Appointments {
    let name: String
    var location: String?
    var dueDate: NSDate?
    var priority: String?

    // Variables cannot be left in an indeterminate state unless declared as optionals
    
    // custom initializer
    init(name: String) {
        self.name = name
    }
    
    func notes() -> String {
        return "The appointment with \(name) will require files to be updated"
    }
    
    // The mutating keyword allow the function to modify a member (like location here)
    mutating func outOfCountry() -> String {
        location = "France"
        return location!
    }
    
}

// memberwise initializer
var appointment = Appointments(name: "Dev")

appointment.location = "Sentier, Paris"
appointment.notes()
appointment.outOfCountry()

