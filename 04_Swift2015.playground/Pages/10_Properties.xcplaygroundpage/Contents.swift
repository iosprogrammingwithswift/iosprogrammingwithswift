//: [Previous](@previous) | [Next](@next)

//: Stored Properties
struct FixedLengthRange {
}
// the range represents integer values 0, 1, and 2
// the range now represents integer values 6, 7, and 8


//: Stored Properties of Constant Structure Instances

// this range represents integer values 0, 1, 2, and 3
//rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property


//: Lazy Stored Properties
//: You must always declare a lazy property as a variable (with the var keyword)

class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a non-trivial amount of time to initialize.
    */
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    // the DataManager class would provide data management functionality here
}


// the DataImporter instance for the importer property has not yet been created

//: Computed Properties


// prints "square.origin is now at (10.0, 10.0)"


//: Shorthand setter

//: Read-Only Computed Properties
//: You must declare computed properties—including read-only computed properties—as variable properties with the var keyword, because their value is not fixed.


// prints "the volume of fourByFiveByTwo is 40.0"

//: Property Observers
class StepCounter {
    var totalSteps: Int = 0
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

//: static
struct AudioChannel {
    let thresholdLevel = 10
    var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
// prints "7"

// prints "7"

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
// prints "10"

// prints "10"

/*:
largely Based of [Apple's Swift Language Guide: Properties](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID254 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
