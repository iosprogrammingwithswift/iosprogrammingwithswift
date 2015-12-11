//
//  ViewController.swift
//  TouchPainter
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    @IBOutlet weak var canvas: UIImageView!
    var currentColor:UIColor = UIColor.redColor()
    var start:CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        start = touch.locationInView(view)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let end = touch.locationInView(view)
        if let start = start {
            canvas.image = drawFromPoint(canvas, start: start, toPoint: end, withColor: currentColor, lineWidth: 1.0, alpha: 1.0)
        }
        start = end
    }
    
    func drawFromPoint(canvas:UIImageView, start: CGPoint, toPoint end: CGPoint , withColor:UIColor, lineWidth:CGFloat, alpha:CGFloat) -> UIImage {
        UIGraphicsBeginImageContext(canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        canvas.image?.drawInRect(CGRect(x: 0, y: 0,
            width: canvas.frame.size.width, height: canvas.frame.size.height))
        CGContextSetLineWidth(context, lineWidth)
        CGContextSetAlpha(context, alpha);
        CGContextSetStrokeColorWithColor(context, withColor.CGColor)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextStrokePath(context)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
    
    @IBAction func colorRotAction(sender: UIButton) {
        currentColor = UIColor.redColor()
    }
    
    @IBAction func colorGruenAction(sender: UIButton) {
        currentColor = UIColor.greenColor()
    }
    
    @IBAction func colorBlauAction(sender: UIButton) {
        currentColor = UIColor.blueColor()
    }
    
    @IBAction func clearImage(sender: UIButton) {
        canvas.image = nil
    }
}












