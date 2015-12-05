//: [Previous](@previous) | [Next](@next)
import UIKit

//: Reminder
[#Image(imageLiteral: "CollectionTypes_intro_2x.png")#]

var arrayExample: [String] = ["Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas"]
var setExample:Set = ["Rock", "Jazz", "Classical", "Hip Hop"]
var dictExample: [String:String] = [
    "YYZ":"Toronto Pearson",
    "DUB": "Dublin Airport",
    "LHR": "London Heathrow"]


//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
//:
var shoppingListExplicit: [String] = ["Eggs", "Milk"]

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

//: To create an empty array or dictionary, use the initializer syntax.
//:
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]


//: Creating an Array with a Default Value
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]


var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]


if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// prints "The shopping list is not empty."

shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs"


shoppingList[0] = "Six eggs"

//shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items

shoppingList.insert("Maple Syrup", atIndex: 0)

//let mapleSyrup = shoppingList.removeAtIndex(0)

//: Iterating Over an Array

for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

for (index, value) in shoppingList.enumerate() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas

//: Sets

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]
print("I have \(favoriteGenres.count) favorite music genres.")
favoriteGenres.insert("Jazz")
print("I have \(favoriteGenres.count) favorite music genres.")
favoriteGenres.insert("Jazz")
print("I have \(favoriteGenres.count) favorite music genres.")
favoriteGenres.insert("Jazz")
print("I have \(favoriteGenres.count) favorite music genres.")


if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenres.sort() {
    print("\(genre)")
}

//: Set operations
[#Image(imageLiteral: "setVennDiagram_2x.png")#]
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()
// []
oddDigits.subtract(singleDigitPrimeNumbers).sort()
// [1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()
// [1, 2, 9]


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true
farmAnimals.isDisjointWith(cityAnimals)

//: Dictionaries
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//as always: isEmpty && count
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
// prints "The airports dictionary is not empty."

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}




/*:
largely Based of [Apple's Swift Language Guide: Collection Types](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
