//: [Previous](@previous) | [Next](@next)

//: ## Functions and Closures
//:
//: Use `func` to declare a function. Call a function by following its name with a list of arguments in parentheses. Use `->` to separate the parameter names and types from the function’s return type.
//:

func sayHelloAgain(personName: String) -> String {
    return "Hello again, " + personName + "!"
}
print(sayHelloAgain("Anna"))
// prints "Hello again, Anna!"


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", day: "Tuesday")

//: > **Experiment**:
//: > Remove the `day` parameter. Add a parameter to include today’s lunch special in the greeting.
//:


//: Specifying External Parameter Names & Omitting External Parameter Names
func sayHello(to person: String, and anotherPerson: String,  _ thirdParamterName: Int) -> String {
    return "Hello \(person) and \(anotherPerson)! -> \(thirdParamterName)"
}
let result = sayHello(to: "Bill", and: "Ted", 7)
print(result)

// prints "Hello Bill and Ted!"

//: Functions with Multiple Return Values
//: Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
//:
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//: Variadic Parameters
//: Functions can also take a variable number of arguments, collecting them into an array.
//:
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

//: > **Experiment**:
//: > Write a function that calculates the average of its arguments.
//:
//: Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
//:
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


//: inout
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"


//: Function Types
//: Functions are a first-class type. This means that a function can return another function as its value.
//:
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//: A function can take another function as one of its arguments.
//:
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
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
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)


func doStuffFromAGivenMethod(list:[Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
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
doStuffFromAGivenMethod(numbers, condition: lessThanTen)
doStuffFromAGivenMethod(numbers, condition: moreThanTen)
doStuffFromAGivenMethod(numbers, condition: isEqualThree)
doStuffFromAGivenMethod(numbers, condition: isEqualTwelve)

/*: Currying
* one of those weird words you avoid because people who say it are sometimes jerks
* it is actually a preetty straightforward concept
* currying is a function that returns another function
* useful for sharing code that is mostly the same
TODO: https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html#//apple_ref/doc/uid/TP40014097-CH34-ID363
*/

func containsAtSign(string:String) -> Bool {
    return string.characters.contains("@")
}
containsAtSign("Toll")
containsAtSign("meineMail@Adresse.con")

var input = ["Six Eggs", "Mil@k", "Flour", "Bak@ing Powder", "Bananas"]

//: Before currying
input.filter(containsAtSign)
/*
func containsAtSign2(substring:String) -> (String -> Bool) {
    return { string -> Bool in
        return string.characters.contains(substring)
    }
}

func containsAtSign3(substring:String)(string -> Bool) -> Bool {
    return string.characters.contains(substring)
}

input.filter(containsAtSign2("@"))
input.filter(containsAtSign3("@"))
*/
/*:
largely Based of [Apple's Swift Language Guide: Functions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
