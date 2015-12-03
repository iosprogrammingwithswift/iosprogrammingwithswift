//: [Previous](@previous) | [Next](@next)

//: ## Functions and Closures
//:
//: Use `func` to declare a function. Call a function by following its name with a list of arguments in parentheses. Use `->` to separate the parameter names and types from the function’s return type.
//:


// prints "Hello again, Anna!"



// prints "Hello Bob, today is Tuesday."

//: > **Experiment**:
//: > Remove the `day` parameter. Add a parameter to include today’s lunch special in the greeting.
//:


//: Specifying External Parameter Names & Omitting External Parameter Names

// prints "Hello Bill and Ted!"

//: Functions with Multiple Return Values
//: Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
//:
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    return (0, 0, 0)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//: Variadic Parameters
//: Functions can also take a variable number of arguments, collecting them into an array.
//:


//: > **Experiment**:
//: > Write a function that calculates the average of its arguments.
//:
//: Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
//:
func returnFifteen() -> Int {
    return 0
}
returnFifteen()


//: inout
func swapTwoInts() {

}

var someInt = 3
var anotherInt = 107
swapTwoInts()
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"


//: Function Types
//: Functions are a first-class type. This means that a function can return another function as its value.
//:


//: A function can take another function as one of its arguments.
//:

var numbers = [20, 19, 7, 12]



//doStuffFromAGivenMethod(numbers, condition: lessThanTen)

/*: Currying
* one of those weird words you avoid because people who say it are sometimes jerks
* it is actually a preetty straightforward concept
* currying is a function that returns another function
* useful for sharing code that is mostly the same
Additional Info: https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html#//apple_ref/doc/uid/TP40014097-CH34-ID363
*/

func containsAtSign(string:String) -> Bool {
    return true
}
containsAtSign("Toll")
containsAtSign("meineMail@Adresse.con")

var input: [String] = ["Six Eggs", "Mil@k", "Flour", "Bak@ing Powder", "Bananas"]

//: Before currying

/*:
largely Based of [Apple's Swift Language Guide: Functions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
