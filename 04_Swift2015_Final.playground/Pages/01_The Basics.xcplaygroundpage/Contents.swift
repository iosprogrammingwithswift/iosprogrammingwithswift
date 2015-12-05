//: [Previous](@previous) | [Next](@next)

print("Hallo Würzburg 🌟")

// DAs ist ein Kommentar


/*
* Das auch!
*/

//MARK: Das ist meine Wichtige Section


//: ## Simple Values
//:
//: Use `let` to make a constant and `var` to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. This means you can use constants to name a value that you determine once but use in many places.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42
//myConstant = 32

//: A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `myVariable` is an integer because its initial value is an integer.
//:
//: If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitInt:Int = 70
let explicitDouble: Double = 70




//: > **Experiment**:
//: > Create a constant with an explicit type of `Float` and a value of `4`.
//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//: > **Experiment**:
//: > Try removing the conversion to `String` from the last line. What error do you get?
//:
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//: > **Experiment**:
//: > Use `\()` to include a floating-point calculation in a string and to include someone’s name in a greeting.
//:


let maximumNumberOfLogins:Int = 10
var currentLoginCount:Int = 0

currentLoginCount += 4
currentLoginCount += 4

let a = 10, b = 20, c = 33
var aa = 10, bb = 20, cc = 33

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow🐶🐮"

let someInt = 1234
let otherValue = 3.22

//: Type Annotations
let otherFloat:Float = 3.33
let someBool:Bool = true

let aString:String = "Hallo"

let val1 = 17
let binary = 0b10001 //17 in binär
let octal = 0o21
let hex = 0x11





//: Printing Constants and Variables
print("Hallo \(implicitInteger) \(🐶🐮)")


print("Hallo \(implicitInteger + val1)")

//: semicolon
let 👍 = "thumb"; print(👍)
👍


//MARK: syntax sugar
let doubleVal = 12345.567
let paddedval = 00012345.567
let oneMillion = 1_000_000
let oneMillionWithRest = 1_000_000.000_1

//: Bounds
UInt8.min
UInt8.max

UInt16.min
UInt16.max

UInt32.min
UInt32.max


//: Tuples

// Constructing a simple tuple
let tp1 = (2, 3)
let tp2 = (2, 3, 4)

// Constructing a named tuple
let tp3 = (x: 5, y: 3)

// Different types
let tp4 = (name: "Carl", age: 78, pets: ["Bonny", "Houdon", "Miki"])

// Accessing tuple elements
let tp5 = (13, 21)
tp5.0 // 13
tp5.1 // 21

let tp6 = (x: 21, y: 33)
tp6.x // 21
tp6.y // 33


let (name, age, pets) = tp4
print("Name: \(name)")
print("Age \(age)")
print("Pets: \(pets)")

//: Ignoring Values During Decomposition
let (_, realAlter, _) = tp4
print("Das Alter \(realAlter)")

//:Named Tuples
//: das Json des kleinen Mannes
let anotherItem = (shape: "Square", color: "Red", coordinate:(1.0, 2.0, 1.5))
print("The shape is \(anotherItem.shape)") // prints "The shape is Square"
print("The color is \(anotherItem.color)") // prints "The color is Red"

//: Tuples in methods 
func origin() -> (Double, Double, Double)
{
    //...
    return (1.0, 2.0, 1.5)
}


/*:
largely Based of [Apple's Swift Language Guide: The Basics](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
