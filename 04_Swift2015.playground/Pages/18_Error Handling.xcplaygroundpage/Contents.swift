//: [Previous](@previous) | [Next](@next)
import Foundation

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}


//throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)

//: Handling Errors

//func canThrowErrors() throws -> String

//func cannotThrowErrors() -> String

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    
    func vend(itemNamed name: String) {
        
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {

}

//: Handling Errors Using Do-Catch


var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8

// prints "Insufficient funds. Please insert an additional 2 coins."


//: Converting Errors to Optional Values


//: Disabling Error Propagation

/*
let photo = try! loadImage("./Resources/John Appleseed.jpg")
*/

//: defer


//: NSError and NSErrorPointer
var err: NSError?
let contents: NSString?


/*:
largely Based of [Apple's Swift Language Guide: Error Handling](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ErrorHandling.html#//apple_ref/doc/uid/TP40014097-CH42-ID508 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
