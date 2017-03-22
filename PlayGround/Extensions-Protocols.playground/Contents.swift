//: Playground - noun: a place where people can play

import UIKit

// * extensions
// add new functionality to : class, enum, struct, protocol

extension Int {
    // new functionality you want to add
    // to the type Int here
    
    var feetInMile: Int { return self * 5280 }
    var inchInMile: Int { return self * 63360 }
}

let marathonInFeet = 26.feetInMile
print("The distance in feet of a 26 mile marathon is \(marathonInFeet) feet")

let marathonInInches = 26.inchInMile
print("The distance in inches of a 26 mile marathon is \(marathonInInches) inches")

let marathonInMeters = Double(26.feetInMile) / 3.2808
print("A 26 mile marathon is \(marathonInMeters) meters long")

let marathonInKilometers = round(Double(Double(26.feetInMile) / 3.2808) / 1000)
print("A 26 mile marathon is \(marathonInKilometers) kilometers long")


// Adopting protocols with an extension

// extension someType: AProtocol, AnotherProtocol {
    // implementation of the protocol requirements go here
// }

// Protocol is like Interface in other language

//protocol Palindrome {
//    func palindromeCheck(word: String) -> Bool
//}

@objc protocol Palindrome {
    @objc optional func palindromeCheck(word: String) -> Bool
    
    var numberOfWords: Int { get } // read only
    var numberOfCharacters: Int { get set } // read write
    
    // Type property
    static var longestPalindrome: String { get } // read only
    
    
}

class FunWithWords: Palindrome {
    
    // Belongs to instance of a particular type
    @objc var numberOfCharacters: Int = 0
    @objc var numberOfWords: Int = 0
    
    // Belongs to the type itself
    @objc static var longestPalindrome: String  = "gateman sees namen garageman sees nametag."
    
    // implement or not
    @objc func palindromeCheck(word: String) -> Bool {
        var reverse = ""
        
        for character in word.characters {
            reverse = String(character) + reverse
        }
        
        return reverse.replacingOccurrences(of: " ", with: "").lowercased() == word.replacingOccurrences(of: " ", with: "").lowercased()
    }

    func oxymorons() {
        print("I find it seriously funny that its simply impossible to find an exact copy of the class syllabus. I'll try asking one of the paid volunteers at the library")
    }
}

var palindromeOrNot = FunWithWords()
palindromeOrNot.palindromeCheck(word: "DAD")
palindromeOrNot.palindromeCheck(word: "toto")

palindromeOrNot.numberOfWords

FunWithWords.longestPalindrome



