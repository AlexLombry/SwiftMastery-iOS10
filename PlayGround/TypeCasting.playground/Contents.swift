//: Playground - noun: a place where people can play

import UIKit

class Book {
    var title: String
    init(title: String) {
        self.title = title
    }
}

class Fiction: Book {
    var author: String
    init(title: String, author: String) {
        self.author = author
        super.init(title: title)
    }
}

class Nonfiction: Book {
    var publishedBy: String
    init(title: String, publishedBy: String) {
        self.publishedBy = publishedBy
        super.init(title: title)
    }
}

let bookLibrary = [
    Fiction(title: "Moby dick", author: "Herman Melville"),
    Nonfiction(title: "The Wright Brothers", publishedBy: "Simon and Schuster"),
    Fiction(title: "Hamlet", author: "William Shakespeare"),
    Nonfiction(title: "Walden", publishedBy: "Henry David Thoreau"),
    Nonfiction(title: "Quantum Healing", publishedBy: "Random House")
]


// "Is" can be see like instanceof in php

var fictionCount = 0
var nonfictionCount = 0

for item in bookLibrary {
    if item is Fiction {
        fictionCount += 1
    } else if item is Nonfiction {
        nonfictionCount += 1
    }
}

print("The library contains \(fictionCount) fiction books and \(nonfictionCount) nonfiction books")

// Downcasting
// Item is a Book instance
for item in bookLibrary {
    // as operator unsure if downcast will succeed, return nil if downcast fails.
    if let fiction = item as? Fiction {
        print("Fiction: \(fiction.title), Author: \(fiction.author)")
    } else if let nonfiction = item as? Nonfiction {
        print("Nonfiction: \(nonfiction.title), Author: \(nonfiction.publishedBy)")
    }
}


// AnyObject Instance of Class type
// Any Instance of any type (Int, Class, func ......)


// This AnyObject holds any class instances
let bookObjects: [AnyObject] = [
    Nonfiction(title: "The Wright Brothers", publishedBy: "Simon and Schuster"),
    Nonfiction(title: "Walden", publishedBy: "Henry David Thoreau"),
    Nonfiction(title: "Quantum Healing", publishedBy: "Random House")
]

// can do this
for object in bookObjects {
    let nonfiction = object as! Nonfiction
    print("Nonfiction: \(nonfiction.title) - PublishedBy \(nonfiction.publishedBy)")
}

// or this (same thing)
for nonfiction in bookObjects as! [Nonfiction] {
    print("Nonfiction: \(nonfiction.title) - PublishedBy \(nonfiction.publishedBy)")
}


// * Any

var variousItems = [Any]()

variousItems.append(2)
variousItems.append(3.0)
variousItems.append("Swift")
variousItems.append((2.0, 4.0))
variousItems.append(Fiction(title: "catch-22", author: "Joseph Heller"))
variousItems.append({ (name: String) -> String in "Hello, \(name)" })

print(variousItems)

for items in variousItems {

    switch items {
    case 2 as Int:
        print("An Int of 2 is in the array")
    case 3.0 as Double:
        print("A Double value of 3.0 is in the array")
    case let someInt as Int:
        print("An Int value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("A Double value of \(someDouble)")
    case is Double:
        print("Some other Double value")
    case let someString as String:
        print("A String value of\(someString)")
    case let (x, y) as (Double, Double):
        print("An (x, y) point at \(x), \(y)")
    case let fiction as Fiction:
        print("A book called \(fiction.title), Author - \(fiction.author)")
    case let stringClosure as (String) -> String:
        print(stringClosure("John"))
    default:
        print("Default String")
    }
}


















