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

for num in numArray where dict[num] != nil {
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
} catch ResponseError.HTTP(let code) where code >= 400 && code % 2 == 0 {
    print("Bad Request") // match
} catch ResponseError.HTTP(let code) where code >= 500 && code < 600  {
    print("Internal Server Error")
}

/*:
## while
*/
var mutableArray:[Int]? = []
while let arr = mutableArray where arr.count < 5 {
    mutableArray?.append(0) // [0,0,0,0,0]
}

/*:
## if
*/
let string:String? = "checkmate"

if let str = string where str == "checkmate" {
    print("game over") // match
} else {
    print("let's play")
}


/*:
## guard
*/
func guardExample(string:String?) {
    guard let str = string where str != "checkmate" else {
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
case let (x, y) where x == 1:
    // match 1
    break
case let (x, y) where x / 5 == 1:
    // not-match
    break
default:
    break
}

/*:
## type constraint
*/
func genericFunction<S where S: StringLiteralConvertible>(string: S) {
    print(string)
}

genericFunction("lambada")


/*:
## let, where and dictionaries
*/
let example = ["a": ["b": ["c": 1]]]
if let a = example["a"],
    b = a["b"],
    c = b["c"] where c > 0 {
        print(c)
}



//: [Previous](@previous) | [Next](@next)
