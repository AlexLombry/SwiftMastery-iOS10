//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//creating empty strings

var emptyString1 = String()

var emptyString2 = ""


if emptyString1.isEmpty {
    
    print("There is no value in this string")
}


//string mutability

let immutableString = "This value cannot be changed"
var mutableString = "This value can be changed"

mutableString = "My value just changed to this new string"


//string interpolation

let stringOfText = "The calculation of"
let number = 25

let resultString = "\(stringOfText) 25 / 5 + 15 = \(Double(number) / 5 + 15)"


//counting characters

let names = "Robert, John, Tom, Rich"

print("These names have a total character count of \(names.characters.count) characters")


//typecasting a string

var someString = "This is a typecast to NSString" as NSString

//concatenating strings and characters

let veggiGroup = "vegetables"
let fruitGroup = " and fruits"

var food = veggiGroup + fruitGroup

var meatGroup = " Turkey, "

meatGroup += food
print(meatGroup)


//appending a character to a string

let exclamationMark: Character = "!"
meatGroup.append(exclamationMark)


//accessing string indices

let name = ""

name.startIndex
name.endIndex


//accessing string values

let greeting = "Hello Swift!"

greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]



//accessing all the indices


//let greeting = "Hello Swift!"
//
//for index in greeting.characters.indices {
//    
//    print("\(greeting[index])", terminator: "")
//}

//inserting and removing

var swifty = "Learning Swift is fun"

swifty.insert("!", at: swifty.endIndex)

swifty.insert(contentsOf: " now".characters, at: swifty.index(before: swifty.endIndex))

swifty.remove(at: swifty.index(before: swifty.endIndex))
print(swifty)

swifty.remove(at: swifty.index(swifty.startIndex, offsetBy: 24))
print(swifty)

let range = swifty.index(swifty.endIndex, offsetBy: -9)..<swifty.endIndex
swifty.removeSubrange(range)
print(swifty)




//string and char equality

let string1 = "Are we identical?"
let string2 = "Are we identical?"

if string1 == string2 {
    
    print("Yes we are identical, but i am 30 seconds older than you 😀")
}

if string1 != string2 {
    
    print("Im an original")
}


//prefix and suffix equality

let entertainmentArray = ["Movies - Terminator 1 - Action",
                          "Movies - Terminator 2 - Action",
                          "Movies - Terminator 3 - Action",
                          "Movies - Ghost Busters - Comedy",
                          "Movies - Heat - Comedy",
                          "TV- How i met your mother - Comedy",
                          "TV - Friends - Comedy",
                          "TV - The Sopranos - Drama",
                          "TV - The Office - Comedy"]

var filmCount = 0

for film in entertainmentArray {
    if film.hasPrefix("Movies") {
        filmCount += 1
    }
}

print("hasPrefix has found \(filmCount) movies!")

var actionCount = 0
var dramaCount = 0
var comedyCount = 0

for film in entertainmentArray {
    if film.hasSuffix("Action") {
        actionCount += 1
    } else if film.hasSuffix("Drama") {
        dramaCount += 1
    } else if film.hasSuffix("Comedy") {
        comedyCount += 1
    }
}

print("hasSuffix has found \(actionCount) action movies, \(dramaCount) tv drama, \(comedyCount) tv comedies!")

//capitalize the first character in a string

let myName = "steve"
myName.uppercased()

myName.lowercased()


var appointmentReminder = "tom has a dentist appointment tomorrow"

appointmentReminder.replaceSubrange(appointmentReminder.startIndex...appointmentReminder.startIndex, with: String(appointmentReminder[appointmentReminder.startIndex]).capitalized)

//removing whitespace

var stringWithWhiteSpace = "          The trimmingCharacters (in: ) method removes this whitespace at both ends            "

var whiteSpaceRemoved = stringWithWhiteSpace.trimmingCharacters(in: NSCharacterSet.whitespaces)



//splitting a string into an array

//var names = "Phil, Tom, John, Mary, Robert, Jane, Melissa"
//
//var newArrayOfNames = names.components(separatedBy: ",")


//convert a string to a data object

let encodedString = "encode this string to an NSData object"

let data = encodedString.data(using: String.Encoding.utf8)


//string to Int conversion

let stringNum = "15"

let someNum = Int(stringNum)
print(someNum!)
















