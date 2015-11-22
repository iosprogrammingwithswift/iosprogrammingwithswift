// Playground - noun: a place where people can play

//MARK: Sources
//- https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/
//- http://www.weheartswift.com/swift-programming-scratch-100-exercises/
//-  https://github.com/nettlep/learn-swift



println("Hallo Würzburg 🌟")

// DAs ist ein Kommentar


/*
 * Das auch!
 */

//MARK: Das ist meine Wichtige Section

var myVar = 42
myVar = 40
let myConstant = 30
//myConstant = 32

//NSString
//NSMutuableString
//NSArray
//NSMutuableArray

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

let otherFloat:Float = 3.33
let someBool:Bool = true

let aString:String = "Hallo"

let val1 = 17
let binary = 0b10001 //17 in binär
let octal = 0o21
let hex = 0x11

let implicitInt = 70
let implicitDouble = 70.0
let explicitInt:Int = 70
let explicitDouble:Double = 70.0
let explicitFloat:Float = 70


println("Hallo \(implicitInt) \(🐶🐮)")


let label = "Die Breite ist"
let width = 94
let widthLabel = label + String(width)


println("Hallo \(implicitInt + val1)")
let hh = 5

let 👍 = "thumb"; println(👍)
👍


//MARK: syntax sugar
let doubleVal = 12345.567
let paddedval = 00012345.567
let oneMillion = 1_000_000
let oneMillionWithRest = 1_000_000.000_1


UInt8.min
UInt8.max

UInt16.min
UInt16.max

UInt32.min
UInt32.max


typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max

if ((true && false) || (true))  {
    "true"
}

//ternary operator
let awesome = (true) ? 50 : 30;


//MARK: Collection Types
//MARK: Array

var someArray = Array<String>()

var shortArray:[String] = ["Andy", "Peter"]
shortArray

var short = ["Andy", "Peter"]
short.count

if !short.isEmpty {
    "hallo"
}

short.append("neuer Wert")
short.append("vierter Wert")
short.count

short += ["5", "6"]

short[2] = "anderer Neuer WErt"
short[5] = "neuer WErt"
short.append("sechsten Wert")
short[6] = "6. Wwrt"

short
//range operator
short[4...6] = ["Wert", "wwww"]
short

short[4..<6] = ["Wert", "wwww", "neuer Wert"]

short.insert("neuer dritte stelle", atIndex: 3)

let itemFromShortList = short.removeLast()

for item in short {
    println(item)
}


for (index, value) in enumerate(short) {
    println(index, value)
}

var someArray1 = Array<String>()
var someArray2 = [Int]()
someArray2.append(3)
someArray2 = []
//NSArray
//NSMutuableArray
let threeDoubles = [Double](count: 5, repeatedValue: 3.4)
let threeDoubles2 = Array(count: 5, repeatedValue: 3.4)
//threeDoubles2.append(4.4)

//arrays are value types
var aaa = [1, 2, 3]
var bbb = aaa
var ccc = aaa

aaa[0] = 42
bbb[0]
ccc[0]
aaa
bbb
ccc

bbb.append(4)
bbb.removeAtIndex(2)


//MARK: Dictionaries
var people = [
    "Flori" : "Tutor",
    "Andy"  : "Tutor",
    "Peter" : "Prof"
]

people["Andy"] = "Awesome"

if let oldValue = people.updateValue("🐼", forKey: "Andy") {
    println("The old value was \(oldValue)")
}

if let oldValue = people.removeValueForKey("Flori") {
    println("The removed Val was \(oldValue)")
}
//removeValueForKey:
//mutating func removeValueForKey(key: Key) -> Value?

for (derName, derBeruf) in people {
    println("Hallo \(derName) & \(derBeruf)")
}

var dict = [String: Float]()
//ganz viele Werte
dict = [:]

//Map<String,Float> = new HashMap<String,Float>() = [String: Float]() = NSDictionary

//MARK: Control Flow
//while
var n = 2
while n < 100 {
    n = n*2
}
n
var m = 2
do {
    m = m*2
} while m < 100
m

var firstForLoop = 0
for i in 0...4 {
    firstForLoop += 1
    "Hallo firstForLoop"
}
firstForLoop
firstForLoop = 0
for var i = 0; i < 4; ++i {
    firstForLoop += 1
}
firstForLoop


for _ in 1...5 {
    "4mal "
}

let names = ["Flori", "Andy", "Patrick", "Peter"]

for _ in names {
    "toll"
}

for (derName, derBeruf) in people {
    println("Hallo \(derName) & \(derBeruf)")
}

for character in "Hallo Würzburg" {
    character
}

//MARK: Optionals
//
var optionalString:String? = "Hallo"
//Int, Bool,

optionalString == nil

optionalString = nil

optionalString == nil

optionalString = "a"

optionalString == nil


let notANumber = "abc"
let fail:Int? = notANumber.toInt()
fail
let possibleNumber = "123"
let success = possibleNumber.toInt()
success
success

let optionalA: String? = nil
//let optionalB: Optional<String> = nil
//❗️ EXPERIMENT: Change optionalName to nil. 
// What greeting do you get? 
// Add an else clause that sets a different greeting if optionalName is nil. } else {
var optionalName: String? = "Andy"
optionalName = nil
var greeting = ""
if let name = optionalName {
    greeting = "Hallo \(name)"
} else {
    greeting = "Kein Name bekannt"
}
greeting


//UNWRAPPING
//Int
//Int?
//Float
//Float?
let optionalNumber = "1234".toInt()
optionalNumber
let unwrappedInt:Int = optionalNumber!
unwrappedInt


var assumedString: String! = "An implicit unwrapped optional string, that we promise will never be nil!"
let copyOfAssumedString:String = assumedString;

assumedString = nil



if assumedString != nil {
    "we have a value"
} else {
    "sorry"
}

//MARK Switch
let student = "peter"
switch student {
case "Andy":
    "toll"
case let x where x.hasSuffix("er"):
    "toll 3 \(x)"
case "Flori", "peter":
    "toll 2 "
default:
    "default"
}

let count = 6
var naturalCount: String
switch count {
case 0:
    "no"
case 1...3:
    "a few"
case 4...9:
    "several"
case 10...999_999:
    "several more"
default:
    "default"
}

//MARK: Functions
//func greet1(name: String) -> (String, String) {
func greet1(name: String) -> (aaaa: String, bbbb: String){
    let greeting = "Hallo \(name)"
    return (name, greeting)
}

let returnValue = greet1("Peter")
returnValue.aaaa
//TODO: summeVon soll nicht nur die summe,
//sondern auch das average aus den eingabewerten zurückgeben
//als Tuple
//sum:Int & average:Float
//4, 56 = 60 (60 / 2) = 30
//BONUS: wenn eingabeWert numbers == nil, dann return 0,0
func summeVon(numbers: Int...) -> (sum:Int, average:Float) {
    var sum = 0
    var total = 0
    
    if numbers.isEmpty == true {
        return (0,0.0)
    }
    
    for number in numbers {
        sum += number
        total++
    }
    
    return (sum, Float(sum) / Float(total))
}
//let theNewFloatVal =  Float(4)
summeVon(2,2,2).average
summeVon(4,56).sum
summeVon(2).average
summeVon().average

//nested function
func returnFifteen() -> Int {
    var y = 10

    //definiert
    func add() {
        y += 5
    }
    
    
    add() //ausgeführt
    return y
}
returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 4 + number
    }
    
    return addOne
}

var eineVariableDieEineFunktionIst = makeIncrementer()
eineVariableDieEineFunktionIst(7)

//funktionen als argumente

func doStuffFromAGivenMethod(list:[Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
func moreThanTen(number: Int) -> Bool {
    return number > 10
}
func isEqualThree(number: Int) -> Bool {
    return number == 3
}
func isEqualTwelve(number: Int) -> Bool {
    return number == 12
}
var numbers = [20, 19, 7, 12]
doStuffFromAGivenMethod(numbers, lessThanTen)
doStuffFromAGivenMethod(numbers, moreThanTen)
doStuffFromAGivenMethod(numbers, isEqualThree)
doStuffFromAGivenMethod(numbers, isEqualTwelve)

lessThanTen(5)
lessThanTen(15)

//MARK: Closures
//sind Code Blöcke, die später aufgerufen werden können

/*
{ (parameters) -> return_type in
    ... anweisungen ...
}

*/
// Aufgabe: return 0 for all even numbers
// if number % 2 == 0 {...} else {...}
// (number % 2 == 0) ? 0 : ...
var numbers2 = [20, 19, 7, 12]
let resultFirstClosureArray = numbers2.map(
    {
        (number:Int) -> Int in
        //let result = (number % 2 == 0) ? 0 : number
        let result = number * 3
        return result
    }
)
resultFirstClosureArray
[60, 57,21,36]
[ 0, 57,21, 0]



let mappedNumbers = numbers2.map({ number in 3*number })
import Foundation
import Accelerate
let x11 = Array(1..<20).map({x in x+1})
let x22 = Array(1..<20).map({andy in cos(Float(andy))})


let names3 = ["Kristina", "Jonas", "Das wird schwierig", "Viktor"]
let sortedNames = names3.sorted { (s1: String, s2:String) -> Bool in
    return s1 > s2
}
sortedNames

//MARK: neuer Tag :-)
//MARK: Enums

//Error = -1 
//Success = 0
//Int, String, Tuples, etc.

enum CompassPoint {
    case North
    case South
    case East
    case West
    case NorthWest, SouthWest
}

var directionToHead = CompassPoint.North
    directionToHead =             .North

switch directionToHead {
case .North:
    "Norden"
case .South:
    "S"
case .East, .NorthWest:
    "E"
default:
    "the other directions"
}

enum Barcode {
    case QRCode(String)
    case UPCA(Int, Int, Int)
}

var barcode = Barcode.QRCode("0123456789")
barcode = Barcode.UPCA(1, 2, 3)
barcode = .UPCA(4, 5, 6)

enum StatusCode:Int {
    case Error = -1
    case Success = 9
    case OtherResult = 1
    case unspecifiedValues
}

StatusCode.OtherResult.rawValue

//Affe, Panda & Koala
enum Pet:String {
    case Affe = "🙈"
    case Panda = "🐼"
    case Koala = "🐨"
}

Pet.Koala.rawValue

var pet = Pet.Affe
var pet2 = Pet(rawValue: "fdsfs") //doof, kein Tier

if pet2 != .None {
    "Wir haben ein Tier"
} else {
    "Leider doch nicht!"
}

//enums vor bools und vor strings

//MARK: Structs -> Classes
//mit Struct anfangen und wenn man merkt, man braucht mehr,
//dann ne Klasse

//kann nicht vererbt werden
//lebt auf dem Stack
struct DasIstEinStruct {
    
}

//Kann vererbt werden
//lebt auf dem Heap
class DasIstEineKlasse {
    
}

struct Resolution {
    var width = 1280
    var height = 1024
}

class VideoMode {
    var resolution = Resolution()
    var name: String = "Ich bin ein VideoMode"
}

var resolution = Resolution()
var videoMode = VideoMode();

videoMode.resolution.width
videoMode.name

videoMode.resolution.width = 9999
//Objc äquivalent
var tmpReso = videoMode.resolution
tmpReso.width = 9999
videoMode.resolution = tmpReso

//classen werden als referenz übergeben
let contantVideoMode = VideoMode()
var variableVideoMode = contantVideoMode

variableVideoMode.name = "Hallo"
contantVideoMode.name

//contantVideoMode = VideoMode()

/*
struct Resolution {
var width = 1280
var height = 1024
}
*/
let vga = Resolution(width: 640, height: 480)


class DataImporter
{
    var filename = "data.txt"
}

class DataManager
{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("DAta 1")
manager.data.append("DAta 2")

manager

manager.importer.filename
manager

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}

//computed properties
struct Rect {
    var origin = Point()
    var size = Size()
    var center:Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y:centerY)
        }
        set { //set(newCenter)
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 3, y: 2), size: Size(width: 20, height: 20))

var center = square.center
square.origin
square.center = Point(x: 50, y: 50)
square.origin

//property observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            "willSetWasCalled \(newTotalSteps)"
        }
        didSet(oldTotalSteps) {
             "didSetWasCalled \(oldTotalSteps)"
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
    
class StepCounter2 {
    var totalSteps: Int = 0 {
        willSet {"willSetWasCalled \(newValue)"}
        didSet  {"didSetWasCalled  \(oldValue)"; totalSteps = 3}
    }
    func setTotalSteps(steps: Int) {
        totalSteps = steps
        //this
    }
    func setzeDenStepCounterAufEinenNeuenWert(x: Int) {
        //neue tolle Berechnungen, bevor der Wert gesetzt wurde
        totalSteps = x
        //neue tolle Berechnungen, nachdem der Wert gesetzt wurde
    }
}

let stepCounter2 = StepCounter2()
stepCounter2.totalSteps = 200

//type properties 
//static
struct StructWithStatic {
    var valueSpecificToInstance:Int = 4
    static var storedTypeProperty = "Some Value"
}

var s1 = StructWithStatic()
s1.valueSpecificToInstance
StructWithStatic.storedTypeProperty
s1.valueSpecificToInstance = 5

var s2 = StructWithStatic()
s2.valueSpecificToInstance


//MARK: Methoden
//gilt für structs, enums und classes

class ClassWithMethod {
    var x: Int = 10
    func doSomething(x: Int) {
        self.x = x
    }
    func doSomethingEsle(otherVal: Int) {
        x = otherVal
    }
}

//Subscripts []
//array[]
//meinTyp[3] = "neuer typ"

struct TimesTable {
    let multiplier:Int // = 4
    
    subscript(index:Int) -> Int {
        return multiplier * index
    }
    

}

var tt = TimesTable(multiplier: 4)
tt[5]

//MARK: Inheritance
//init //deinit

class Shape {
    var numberOfSides:Int//? fehlt hier bewusst
    var name: String
    
    convenience init() {
        //self.init(name: "Shape")
        self.init("Shape") //ruft init mit _ auf
        numberOfSides = 0
    }
    
    init(name:String) {
        self.name = name
        numberOfSides = 0
    }
    
    init (_ ausgelassenerParameterName: String) {
        self.name = ausgelassenerParameterName
        numberOfSides = 0
    }
    
    init(name: String, numberOfSides:Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides)"
    }
    
    deinit {
        println("Goodbye, gleich essen")
    }
}

var shape = Shape(name: "Quadrat")
shape.numberOfSides = 4
shape.simpleDescription()
var shape2 = Shape(name: "Quadrat", numberOfSides: 4)
shape2.simpleDescription()


class EquiliteralTriangle: Shape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        super.init(name: name)
        self.sideLength = sideLength
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A shape with \(numberOfSides) with sideLength \(sideLength) and area \(self.area())"
    }
}

let triangle = EquiliteralTriangle(sideLength: 5, name: "Dreieck")
triangle.area()
triangle.simpleDescription()
//"A shape with 4"
//"A shape with 4 with sideLength 5.0 and area 25.0"





