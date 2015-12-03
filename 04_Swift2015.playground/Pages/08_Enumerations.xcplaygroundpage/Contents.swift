//: [Previous](@previous) | [Next](@next)
import Foundation

//: Use `enum` to create an enumeration. Like classes and all other named types, enumerations can have methods associated with them.
//:
enum Rank: Int {
    case Ace = 1
}


//: > **Experiment**:
//: > Write a function that compares two `Rank` values by comparing their raw values.
//:
//: In the example above, the raw-value type of the enumeration is `Int`, so you only have to specify the first raw value. The rest of the raw values are assigned in order. You can also use strings or floating-point numbers as the raw type of an enumeration. Use the `rawValue` property to access the raw value of an enumeration case.
//:
//: Use the `init?(rawValue:)` initializer to make an instance of an enumeration from a raw value.
//:


//: The case values of an enumeration are actual values, not just another way of writing their raw values. In fact, in cases where there isn’t a meaningful raw value, you don’t have to provide one.
//:


//: > **Experiment**:
//: > Add a `color()` method to `Suit` that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
//:
//: Notice the two ways that the `Hearts` case of the enumeration is referred to above: When assigning a value to the `hearts` constant, the enumeration case `Suit.Hearts` is referred to by its full name because the constant doesn’t have an explicit type specified. Inside the switch, the enumeration case is referred to by the abbreviated form `.Hearts` because the value of `self` is already known to be a suit. You can use the abbreviated form anytime the value’s type is already known.


enum NSDateFormatPattern:String {
    case clockTime = "HH:mm:ss"
    case date = "dd-MM-YY"
    case dateTimeWithMilliseconds = "yyyy-MM-dd HH:mm:ss,SSS ZZZ"
    case dateTime = "yyyy-MM-dd HH:mm:ss"
};

//NSDate().formattedStringForDate(.dateTime) ;


/*:
largely Based of [Apple's Swift Language Guide: Enumerations](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html#//apple_ref/doc/uid/TP40014097-CH12-ID145 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
