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



