//: Playground - noun: a place where people can play

import UIKit

var meeting = (meetingType: "Board Meeting", date: (NSDate()), presentation: true)
var currency = ("US Dollar", 350.00)

meeting.0
meeting.1
meeting.2

meeting.date
meeting.meetingType

meeting.2

let workItinerary = meeting.meetingType
let teamPresentation = meeting.presentation

let (currencyType, _) = currency

currencyType


let businessTrips = ["San Francisco" : 650.00, "Japan" : 1800.00, "London" : 1200.00, "Brazil" : 2200.00, "New York" : 450.00]

for (location, tripExpense) in businessTrips {
    
    print("The business trip to \(location) has a budgeted expense of \(tripExpense)")
}


func smallesetAndLargest(arrayOfInts: [Int]) -> (small: Int, Large: Int)? {
    
    if arrayOfInts.isEmpty { return  nil }
    
    var smallest = arrayOfInts[0]
    var largest = arrayOfInts[0]
    
    for value in arrayOfInts[1..<arrayOfInts.count] {
        if value < smallest {
            
            smallest = value
        } else if value > largest {
            
            largest = value
        }
    }
    return (smallest, largest)
}

let results = smallesetAndLargest(arrayOfInts: [8, 45, 2, -7, 32, 71])

let emptyArray = [Int]()

//smallesetAndLargest(arrayOfInts: emptyArray)


if let optionalResults = smallesetAndLargest(arrayOfInts: emptyArray) {
    print("The smallest number in the array is \(optionalResults.small) and the largest is \(optionalResults.Large)")
}


