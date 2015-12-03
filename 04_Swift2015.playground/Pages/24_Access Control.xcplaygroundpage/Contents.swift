//: [Previous](@previous) | [Next](@next)


class SomePublicClass {}
class SomeInternalClass {}
class SomePrivateClass {}

var somePublicVariable = 0
let someInternalConstant = 0
func somePrivateFunction() {}

public class SomePublicClass2 {          // explicitly public class
    var somePublicProperty = 0    // explicitly public class member
    var someInternalProperty = 0         // implicitly internal class member
    func somePrivateMethod() {}  // explicitly private class member
}

class SomeInternalClass2 {               // implicitly internal class
    var someInternalProperty = 0         // implicitly internal class member
    func somePrivateMethod() {}  // explicitly private class member
}

class SomePrivateClass2 {        // explicitly private class
    var somePrivateProperty = 0          // implicitly private class member
    func somePrivateMethod() {}          // implicitly private class member
}

/*:
largely Based of [Apple's Swift Language Guide: Access Control](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html#//apple_ref/doc/uid/TP40014097-CH41-ID3  ) & [Apple's A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1 )
*/
//: [Previous](@previous) | [Next](@next)
