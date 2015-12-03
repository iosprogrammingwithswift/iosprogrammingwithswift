//: [Previous](@previous) | [Next](@next)
import UIKit
/*:
Subscripts
Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence.
*/

//: is known from here :-)
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]



struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]

    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }

}



[#Image(imageLiteral: "subscriptMatrix01_2x.png")#]


[#Image(imageLiteral: "subscriptMatrix02_2x.png")#]

//let someValue = matrix[2, 2]
// this triggers an assert, because [2, 2] is outside of the matrix bounds

/*:
largely Based of [Apple's Swift Language Guide: Subscripts](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Subscripts.html#//apple_ref/doc/uid/TP40014097-CH16-ID305 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
