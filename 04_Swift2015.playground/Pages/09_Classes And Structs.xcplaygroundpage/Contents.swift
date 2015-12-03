//: [Previous](@previous) | [Next](@next)


//: Definition Syntax

// structure definition goes here

// class definition goes here


//: Class and Structure Instances

//: Memberwise Initializers for Structure Types

//:Structures and Enumerations Are Value Types
/*:
A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.

You’ve actually been using value types extensively throughout the previous chapters. In fact, all of the basic types in Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries—are value types, and are implemented as structures behind the scenes.
*/

// prints "cinema is now 2048 pixels wide"
//:However, the width property of the original hd instance still has the old value of 1920:

// prints "hd is still 1920 pixels wide

//same behavior applies to enumerations

enum CompassPoint {
    case North, South, East, West
}

// prints "The remembered direction is still .West"


//: Classes Are Reference Types


// prints "The frameRate property of tenEighty is now 30.0"


//:Identity Operators

// prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."


/*:
largely Based of [Apple's Swift Language Guide: Classes And Strucs](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
