//: [Previous](@previous) | [Next](@next)
import UIKit

//: Reminder
[#Image(imageLiteral: "CollectionTypes_intro_2x.png")#]

["Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas"]
["Rock", "Jazz", "Classical", "Hip Hop"]
["YYZ":"Toronto Pearson", "DUB": "Dublin Airport", "LHR": "London Heathrow"]


//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
//:


//: To create an empty array or dictionary, use the initializer syntax.
//:

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:


//: Creating an Array with a Default Value

// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]


// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]


// prints "The shopping list is not empty."




// shoppingList now contains 4 items

// shoppingList now contains 7 items


// firstItem is equal to "Eggs"


// shoppingList now contains 6 items




//: Iterating Over an Array


// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas


// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas

//: Sets

["Rock", "Classical", "Hip hop"]
["Rock", "Classical", "Hip hop"]

//print("I have \(favoriteGenres.count) favorite music genres.")

//print("I have \(favoriteGenres.count) favorite music genres.")

//print("I have \(favoriteGenres.count) favorite music genres.")

//print("I have \(favoriteGenres.count) favorite music genres.")





//: Set operations
[#Image(imageLiteral: "setVennDiagram_2x.png")#]
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// []

// [1, 9]

// [1, 2, 9]


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


// true

// true


//: Dictionaries
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//as always: isEmpty && count



// prints "The airports dictionary is not empty."









/*:
largely Based of [Apple's Swift Language Guide: Collection Types](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
