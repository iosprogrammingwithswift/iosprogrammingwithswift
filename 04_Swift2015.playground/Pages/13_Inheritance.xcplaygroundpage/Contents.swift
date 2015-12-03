//: [Previous](@previous) | [Next](@next)

//: Inheritance
//: Fun Fact: Swift classes do not inherit from a universal base class. Classes you define without specifying a superclass automatically become base classes for you to build upon.
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
// Vehicle: traveling at 0.0 miles per hour


//: Subclassing

//print("Bicycle: \(bicycle.description)")
// Bicycle: traveling at 15.0 miles per hour


//: Overriding

// prints "Choo Choo"



// Car: traveling at 25.0 miles per hour in gear 3

//: Preventing Overrides
//: You can prevent a method, property, or subscript from being overridden by marking it as final. Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript).

/*:
largely Based of [Apple's Swift Language Guide: Inheritance](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Inheritance.html#//apple_ref/doc/uid/TP40014097-CH17-ID193 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
