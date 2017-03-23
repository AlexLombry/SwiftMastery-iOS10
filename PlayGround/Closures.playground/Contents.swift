//: Playground - noun: a place where people can play

import UIKit

var lastNames = ["Stark", "Kent", "Snowden", "Manning"]

func sortB(_ str1: String, _ str2: String) -> Bool {
    return str1 > str2
}

var reversed = lastNames.sorted(by: sortB)

// With closures expression
// Parameter type / return type can be inferred, not needed to write it down
var reversed2 = lastNames.sorted(by: { (str1: String, str2: String) -> Bool in
    return str1 > str2
})

// inline closure expression when used as a function argument
var reversed3 = lastNames.sorted(by: { str1, str2 in return str1 > str2 })

// implicit return (return can be omitted
var reversed4 = lastNames.sorted(by: { str1, str2 in str1 > str2 })

// shorthand argument names for inline losures $0, $1, $2 ...
var reversed5 = lastNames.sorted(by: { $0 > $1 })


print(reversed2)
// { (parameters) -> ReturnType in 
    // code
// }

// Swift :
/*
{ (str1: String, str2: String) -> Bool in
    return str1 > str2
}
*/

// PHP :
/*
function ($str1, $str2): bool {
    return $str1 > $str2
}
*/

// { (str1: String, str2: String) -> Bool in return str1 > str2 }

// Trainling closures
lastNames.sorted{(str1: String, str2: String) -> Bool in
    return str1 > str2
}

let digits = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine"]


let numbers = [25, 82, 615]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    
    repeat {
        output = digits[number % 10]! + output
        
        number /= 10
    } while number > 0
    
    return output
}

//print(strings)




func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        
        return runningTotal
    }
    return incrementer
}

let inc = makeIncrementer(forIncrement: 5)

inc()
inc()
inc()

let inc8 = makeIncrementer(forIncrement: 8)
inc8()
inc8()
inc8()


