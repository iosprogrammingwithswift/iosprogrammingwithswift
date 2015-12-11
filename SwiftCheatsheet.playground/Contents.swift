//: Playground - noun: a place where people can play

import UIKit


//var name :type = value

//Variables: Explicit

var currentValue:Double = 2.0
currentValue = 1.0

//Variables: inferred

var currentValueInferred = 2.0
currentValueInferred = 1.0

//Constants
let maximumNumberOfLoginAttempt:Int = 3
//maximumNumberOfLoginAttempt = 2 //error

//Optional Variables

var myOptionalClassNonEmptyString:String
//print(myOptionalClass) //error
//myOptionalClass = nil //error

var myOptionalClass:String?
myOptionalClass = nil
if let mydefindClass = myOptionalClass {
    print(mydefindClass)
} else{
    print("no Class found")
    
}
//String Examples

let constantClassNameMathematik = "Mathematik"
//constantClassName = += “ iOS” //error

var mutableClassName = "Programming"
mutableClassName += " iOS"

let constantClassName = "Programming"
let iosClassName = "iOS"

var courseName = constantClassName + " "+iosClassName
courseName = courseName+"!"

let courseMessage = "\(constantClassName) is now offered for \(iosClassName)"

//Array Examples
var student1 = "Jan"
var student2 = "Brian"

// init
var students:[String] = [student1, student2]

// insert
students.append("Waldo")

students += ["Denis"]

students += ["Hans", "Denis", "Peter"]

students.insert("Nicole", atIndex: 0)

// iterating
for person in students {
    print("person: \(person)")
}

var student3 = students[2]




//Dictionary Examples
// init
var roomList:[Int: String] = [201: "PCPool", 202: "Office", 203 : "MeetingRoom"]
// elements

roomList.count


//Accessing Dictionaries

let room = 201
let optionalRoomType = roomList[room]
if let definiteRoomType = optionalRoomType {
    print("\(room) is a \(definiteRoomType)")
} else {
    print("Sorry, never heard of \(room)!")
}
// insert
roomList[200] = "Kitchen"
// update
roomList[201] = "PC Pool"
// delete
roomList[203] = nil
//roomList.removeValueForKey(201)

//Dictionary Ordering

for (room, roomType) in roomList {
    print("[Unsorted] \(room) is a \(roomType)")
}

let keys = roomList.keys
let sortedKeys = Array(roomList.keys).sort()
for room in sortedKeys {
    let type = roomList[room]!
    print("[Sorted] \(room) is a \(type)")
}





//Control Flow
//for
for i in 1..<10 {
    print("Exclusive: \(i)")
}
for i in 1...10 {
    print("Inclusive: \(i)")
}
for i in 0..<students.count {
    let studentName = students[i]
    print(studentName)
}

for studentName in students {
    print(studentName)
}

for var i = 0; i < students.count; ++i {
    let studentName = students[i]
    print(studentName)
}

//While and Do-While
var multiplesOf5 = 5
while multiplesOf5 < 100 {
    print("\(multiplesOf5)")
    multiplesOf5 += 5
}

var multiplesOf4 = 4
repeat {
    print("\(multiplesOf4)")
    multiplesOf4 += 3
} while multiplesOf4 < 100
//if-Else
let name = students[3]


if name.characters.count <= 3 {
    print("You have a short name.")
} else if name.characters.count <= 6 {
    print("You have an average name.")
} else {
    print("You have a long name.")
}

//switch
let teamMember = name
switch (name) {
case "BC", "Chris B", "Wendy":
    print("Team 1")
case "Waldo", "Jan", "Ryan":
    print("Team 2")
case "Greg", "Brian", "Peter", "Ray":
    print("Team 3")
default: print("Team")
}
/**
* Swich and Ranges
*/

switch teamMember.characters.count {
case 0...3:
    print("You have a short name.")
case 4...6:
    print("You have an average name.")
default:
    print("You have a long name.")
}

/**
 * Classes
 */
class Student{
    var name = ""
    var age = 21
    var matr = 0
    
}

// instance class
var student = Student()

// Accessing properties
student.name










//Funcations
func doIt() -> Int {
    return 0
}
func doIt(a:Int) -> Int {
    return a
}

func doIt(a:Int, b:Int) -> Int {
    return a+b
}


// Closures
//The basic syntax is:
//
// { (parameters) -> return_type in
//   ... statements ...
// }

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversed = [String]()
reversed = names.sort({
    (s1: String, s2: String) -> Bool in
    return s1 > s2
})















