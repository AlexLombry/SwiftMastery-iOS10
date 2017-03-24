//: Playground - noun: a place where people can play

import UIKit

//create an empty set
var someSet = Set<String>()

//declare a set - type annotation
var anotherSet: Set<String> = ["Value1", "Value2"]

//declare a set - type inferrence
var typeInferredSet: Set = ["Value1", "Value2"]

//an array - inferred
var typedInferredArray = ["Value1", "Value2"]

//initial a set with an array
let primaryColorSet = Set(["Red", "Blue", "Yellow"])

//the 2 main differences between an array and a set
var appleProducts: Set = ["Imac", "Macbook Pro", "Iphone", "Iphone"]

var countries = ["Albania", "brazil", "China", "China"]

//using the read only count property
print("I have \(appleProducts.count) apple products in my set")

//checking if the count property is equal to 0 using isEmpty
if appleProducts.isEmpty {
    
    print("This is an empty set")
    
} else {
    
    print("There are items in this set")
}

//using contains() to see if an item is in the set
if appleProducts.contains("Ipad") {
    
    print("an iPad is in this set")
    
} else {
    
    print("There is no iPad in this set")
}

//insert an item into the set with the insert() method
appleProducts.insert("iPad")

//using the remove() method to remove an item from the set
//if let removedProduct = appleProducts.remove("iPad") {
//    
//    print("I just sold my \(removedProduct) on eBay")
//    
//} else {
//    
//    print("I decided to keep my ipad")
//}
//

//removing all the items from a set with the remveAll() method
//appleProducts.removeAll()

//iterating over a set
for products in appleProducts {
    
    print("\(products)")
}

//using the sorted() method to sort a set
for product in appleProducts.sorted(by: <) {
    
    print("\(product)")
}

for product in appleProducts.sorted(by: >) {
    
    print("\(product)")
}

//three sets created
var divisibleBy2: Set = [2, 4, 6, 8, 10]

var divisibleBy3: Set = [3, 6, 9, 12, 15]

var divisibleBy4: Set = [4, 8, 12, 16, 20]

//using the union() method - joins sets together
divisibleBy2.union(divisibleBy3).sorted()

//using the intersection() method - returns a new set with the sets numbers that are in common
divisibleBy2.intersection(divisibleBy3).sorted()

//using the subtract() method to remove values form a set
divisibleBy2.subtract(divisibleBy4)

//using the symmetricDifference() method to return a set containing the values that were in either of the two sets, but not in both
divisibleBy2.symmetricDifference(divisibleBy4).sorted()

//using the isSubset() method which returns true if a set is a subset of another set
divisibleBy2.isSubset(of: divisibleBy4)

//using the isSuperset() method which returns true if a set is a superset of another set
divisibleBy2.isSuperset(of: divisibleBy3)

//using the isDisjoint() method - returns true if the two sets have no members in common
divisibleBy2.isDisjoint(with: divisibleBy3)














