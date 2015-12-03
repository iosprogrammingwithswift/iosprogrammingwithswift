//: [Previous](@previous) | [Next](@next)

import Foundation

/*:
 # where everywhere! 
 ## or don't forget where :-)
 this stuff is heavily inspired by Marcin Krzyzanowski [https://twitter.com/krzyzanowskim](@krzyzanowskim)

 Based of: http://blog.krzyzanowskim.com/2015/11/13/where-where-may-be-used/
*/
/*:
 ## for-in
*/

let numArray = [1,2,3,4]
let dict = [3:"three", 4:"four", 5: "five"]

for num in numArray  {
    // 1, 2
    num
}

/*:
## do-catch
*/
enum ResponseError: ErrorType {
    case HTTP(Int)
}

func errorProne() throws {
    throw ResponseError.HTTP(404)
}

do {
    try errorProne()
}

/*:
## while
*/
var mutableArray:[Int]? = []
while let arr = mutableArray {
    mutableArray?.append(0) // [0,0,0,0,0]
}

/*:
## if
*/
let string:String? = "checkmate"

if let str = string {
    print("game over") // match
} else {
    print("let's play")
}


/*:
## guard
*/
func guardExample(string:String?) {
    guard let str = string else {
        print("game over") // match
        return
    }
    
    print("let's play")
}
guardExample(string)

/*:
## switch
*/
var value = (1,2)
switch value {
case let (x, y):
    // match 1
    break
case let (x, y):
    // not-match
    break
default:
    break
}

/*:
## type constraint
*/
func genericFunction<S>(string: S) {
    print(string)
}

genericFunction("lambada")


/*:
## let, where and dictionaries
*/
let example = ["a": ["b": ["c": 1]]]
if let a = example["a"],
    b = a["b"],
    c = b["c"] {
        print(c)
}



//: [Previous](@previous) | [Next](@next)
