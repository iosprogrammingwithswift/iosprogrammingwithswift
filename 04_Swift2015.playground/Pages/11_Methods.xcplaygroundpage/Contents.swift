//: [Previous](@previous) | [Next](@next)


//: Instance Methods
class Counter {
    var count = 0
    
}

let counter = Counter()
// the initial counter value is 0

// the counter's value is now 1

// the counter's value is now 6

// the counter's value is now 0


//: Local and External Parameter Names for Methods
extension Counter {

}

// counter value is now 15

//:self
struct Point {
    var x = 0.0, y = 0.0

}
let somePoint = Point(x: 4.0, y: 5.0)

//if //
//print("This point is to the right of the line where x == 1.0")


//: Modifying Value Types from Within Instance Methods
//: Structures and enumerations are value types. By default, the properties of a value type cannot be modified from within its instance methods.
//: mutating for the rescue
struct Point2 {
    var x = 0.0, y = 0.0

}
var somePoint2 = Point2(x: 1.0, y: 1.0)

print("The point is now at (\(somePoint2.x), \(somePoint2.y))")
// prints "The point is now at (3.0, 4.0)"


//: Type Methods (class methods)
struct LevelTracker {
    
    
    var currentLevel = 1
    
}


class Player {
    
    let playerName: String
    
    init(name: String) {
        playerName = name
    }
}


var player = Player(name: "Andy")

//print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// prints "highest unlocked level is now 2"

//player = Player(name: "Flori")
//if 
//    print("player is now on level 6")
//} else {
//    print("level 6 has not yet been unlocked")
//}
// prints "level 6 has not yet been unlocked"

/*:
largely Based of [Apple's Swift Language Guide: Methods](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html#//apple_ref/doc/uid/TP40014097-CH15-ID234 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
