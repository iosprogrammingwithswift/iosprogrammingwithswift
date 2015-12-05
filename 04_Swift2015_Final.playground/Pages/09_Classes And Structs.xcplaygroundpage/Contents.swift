//: [Previous](@previous) | [Next](@next)


//: Definition Syntax
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}


struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//: Class and Structure Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

//: Memberwise Initializers for Structure Types
let vga = Resolution(width: 640, height: 480)
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd


//:Structures and Enumerations Are Value Types
/*:
A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.

You’ve actually been using value types extensively throughout the previous chapters. In fact, all of the basic types in Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries—are value types, and are implemented as structures behind the scenes.
*/
cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")
// prints "cinema is now 2048 pixels wide"
//:However, the width property of the original hd instance still has the old value of 1920:

print("hd is still \(hd.width) pixels wide")
// prints "hd is still 1920 pixels wide

//same behavior applies to enumerations

enum CompassPoint {
    case North, South, East, West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    print("The remembered direction is still .West")
}
// prints "The remembered direction is still .West"


//: Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// prints "The frameRate property of tenEighty is now 30.0"


//:Identity Operators
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
// prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."


/*:
largely Based of [Apple's Swift Language Guide: Classes And Strucs](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
