//: [Previous](@previous) | [Next](@next)

//: Automatic Reference Counting
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}


class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}


//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "John Appleseed")
//
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//
//reference3 = nil

// prints "John Appleseed is being deinitialized"

//: Arc
var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")


john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil

//: Weak
class AwesomePerson {
    let name: String
    init(name: String) { self.name = name }
    var apartment: ApartmentWithWeak?
    deinit { print("\(name) is being deinitialized") }
}

class ApartmentWithWeak {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: AwesomePerson?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john2: AwesomePerson?
var unit4A2: ApartmentWithWeak?

john2 = AwesomePerson(name: "John Appleseed")
unit4A2 = ApartmentWithWeak(unit: "4A")

john2!.apartment = unit4A2
unit4A2!.tenant = john2

unit4A2 = nil
john2 = nil

/*:
largely Based of [Apple's Swift Language Guide: ARC](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID48 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
