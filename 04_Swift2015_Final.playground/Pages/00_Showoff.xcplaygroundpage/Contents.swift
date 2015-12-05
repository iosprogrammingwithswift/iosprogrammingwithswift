//: [Previous](@previous) | [Next](@next)

//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let s = 0.0.stride(through: 4.0, by: 0.25)
let seq = Array(s)

for value in seq {
    value
    
    value * value
    
    value * value * value

    
}
let size:CGFloat = 48.0
let small:CGFloat = 8.0
let width:CGFloat = size - small
UIGraphicsBeginImageContext(CGSizeMake(size, size))
let path = UIBezierPath()

path.appendPath(UIBezierPath(roundedRect: CGRectMake(small/2, small/2, width,width), cornerRadius: size))
path.appendPath(UIBezierPath(ovalInRect: CGRectMake(width/2, width/2, small, small)))
path.lineWidth = 2
UIColor.orangeColor().set()
path.stroke()
let thumb = UIGraphicsGetImageFromCurrentImageContext()
UIGraphicsEndImageContext()

let slider = UISlider(frame: CGRectMake(0,0,200,50))
slider.value = 0.7

slider.minimumTrackTintColor = UIColor.greenColor()

slider.maximumTrackTintColor = UIColor.redColor()

slider.setThumbImage(thumb, forState: .Normal)


//: # Literals in a Playground
//:
//: ### Image Literals
//: Here we're creating a template image from a `.png` file in our resources. The default type for image literals is **NSImage** on OS X and **UIImage** on iOS and tvOS.

let swiftTemplate = [#Image(imageLiteral: "swift.png")#].imageWithRenderingMode(.AlwaysTemplate)

//: ### Color Literals
//: Now we're setting the tint color of a **UIImageView** with our template image, and the colors for a **CAGradientLayer** to serve as our background. The default type for color literals is **NSColor** on OS X and **UIColor** on iOS and tvOS. Try changing the colors by double-clicking on a color literal.
let imageView = UIImageView(image: swiftTemplate)
imageView.tintColor = [#Color(colorLiteralRed: 1, green: 1, blue: 1, alpha: 1)#]

let gradientLayer = CAGradientLayer()
gradientLayer.colors = [[#Color(colorLiteralRed: 0.9725490196, green: 0.5411764706, blue: 0.2117647059, alpha: 1)#].CGColor, [#Color(colorLiteralRed: 0.9921568627, green: 0.1254901961, blue: 0.1254901961, alpha: 1)#].CGColor]

let backgroundView = UIView(frame: imageView.bounds)
gradientLayer.frame = backgroundView.bounds

backgroundView.layer.addSublayer(gradientLayer)
backgroundView.addSubview(imageView)

//: ### File Literals
//: Here we're creating an **NSAttributedString** from a text file in our resources. The default type for file literals is **NSURL** on all platforms.

if let asciiSwift = try? String(contentsOfURL: [#FileReference(fileReferenceLiteral: "swiftAsASCII.txt")#]) {
    if let font = UIFont(name: "Courier", size: 10.0) {
        let attrString = NSAttributedString(string: asciiSwift, attributes: [NSFontAttributeName : font])
    }
}

//: [Previous](@previous) | [Next](@next)
