//: Playground - noun: a place where people can play
//
import UIKit
//
//// Defines common type for a group of related value
//// can define an initializer and can be extends or implement a protocol
//
////enum DogBreed: String {
////    case pomenarian
////    case husky
////    case pug
////    case collie = "large breed"
////}
//
//// Associated values can now be assigned to this case
//enum DogBreed {
//    case pomenarian (Int, String)
//    case husky (Int, String)
//    case pug (Int, String)
//    case collie (Int, String)
//}
//
//enum StateEnum {
//    case newYork, florida, newJersey, maine, california, texas, georgia
//}
//
//var largeCanine = DogBreed.husky
////largeCanine = .collie
////
////print(largeCanine)
////print(largeCanine.rawValue)
////
////largeCanine = .collie
////
////switch largeCanine {
////case .pomenarian:
////    print("Two pome survive to the titanic")
////case .husky:
////    print("Poor watch dogs")
////case .pug:
////    print("Called grumble")
////    
//////case .collie:
//////    print("Loyal dogs")
////default:
////    print("No matches")
////}
////
//
//
//var lifespanAndCatecory = DogBreed.pomenarian(17, "Toy Breed")
//
//print(lifespanAndCatecory)
//
//switch lifespanAndCatecory {
//case .pomenarian(let lifespan, let category):
//    print("Pomen live to about \(lifespan), and are a \(category)")
//case .husky(let lifespan, let category):
//    print("Husky live to about \(lifespan), and are a \(category)")
//case .pug(let lifespan, let category):
//    print("Pug live to about \(lifespan), and are a \(category)")
//case .collie(let lifespan, let category):
//    print("Collie live to about \(lifespan), and are a \(category)")
//}
//

enum ATMError: Error {
    case invalidSelection
    case updatedBankBalance (addFunds: Double)
    case wrongPinNumber
    case balanceCheck (alert: String)
}

var bankBalance = 400.00

func balanceCheckIfBelow500() {
    if bankBalance < 500 {
        ATMError.balanceCheck(alert: "Your account is overdrawn")
    }
}

balanceCheckIfBelow500()

func addFunds(add: Double) -> ATMError {
    return ATMError.updatedBankBalance(addFunds: bankBalance + add)
}

addFunds(add: 350)
balanceCheckIfBelow500()


// * Raw values

enum ControlCharacters: Character {
    case tab = "\t"
    case linefeed = "\n"
    case carriageReturn = "\r"
}

let tab = ControlCharacters.tab.rawValue
let linefeed = ControlCharacters.linefeed.rawValue
let carriageReturn = ControlCharacters.carriageReturn.rawValue

enum MovieGenre: Int {
    case action = 1, comedy, drama, scienceFiction, fantasy, classics, foreign, documentary
}

MovieGenre.action.rawValue
MovieGenre.comedy.rawValue

enum FirstName: String {
    case rob, john, tom, rich
}

FirstName.rob.rawValue


// * Recursive enums

// return an optional value, we have to unwrapped it for use
let favoriteGenre = MovieGenre(rawValue: 6)

let movieGenreToFind = 6
if let someGenre = MovieGenre(rawValue: movieGenreToFind) {
    switch someGenre {
    case .classics:
        print("Movie genre found at position \(movieGenreToFind)")
    default:
        print("No move genre here")
    }
} else {
    print("There is no genre at position \(movieGenreToFind)")
}


// * Recursive enums

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    
}

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(expression: left) + evaluate(expression: right)
    case .multiplication(let left, let right):
        return evaluate(expression: left) * evaluate(expression: right)
    }
}


let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)

let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

print(evaluate(expression: product))













