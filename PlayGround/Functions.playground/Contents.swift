//: Playground - noun: a place where people can play

import UIKit

// function that adds 3 str objects together and returns a new string

func greeting(name: String) -> String {
    let greet = "Hello, " + name + "!"
    let hola = ", Hola, \(name) !"
    return greet + hola
}

greeting(name: "Alex")


// Math func example

func divide(num1: Double, num2: Double) -> Double {
    return num1 / num2
}

divide(num1: 35.14, num2: 12.8)

func multiply(num1: Double, num2: Double) -> Double {
    return num1 * num2
}

multiply(num1: 356, num2: 8)

// With and without return type

func countLetters(word: String) -> Int {
    print(word)
    return word.characters.count
}

countLetters(word: "Where are you")

// return void but the print show something
func printLetters(word: String) {
    print(word)
}

printLetters(word: "Salut")
