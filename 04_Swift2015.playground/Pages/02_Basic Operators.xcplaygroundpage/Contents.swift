//: [Previous](@previous) | [Next](@next)


//: Terminology
//: Operators are unary, binary, or ternary:
//:
//: Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as i++).
//: Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
//: Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
//: The values that operators affect are operands. In the expression 1 + 2, the + symbol is a binary operator and its two operands are the values 1 and 2.


//: Assignment Operator


// a is now equal to 10


// x is equal to 1, and y is equal to 2

//: Modulo


1 == 1   // true, because 1 is equal to 1
2 != 1   // true, because 2 is not equal to 1
2 > 1    // true, because 2 is greater than 1
1 < 2    // true, because 1 is less than 2
1 >= 1   // true, because 1 is greater than or equal to 1
2 <= 1   // false, because 2 is not less than or equal to 1


//: Ternary Conditional Operator

// rowHeight is equal to 90

// rowHeight2 is equal to 90


//: Nil Coalescing Operator
//: The nil coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is stored inside a.
//:
//: The nil coalescing operator is shorthand for the code below:
//:
//: a != nil ? a! : b


/*:
largely Based of [Apple's Swift Language Guide: Basic Operators](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID60 ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
