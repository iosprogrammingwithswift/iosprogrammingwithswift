//
//  ViewController.swift
//  TouchPainter
//
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class TouchViewController: UIViewController {
    
    @IBOutlet weak var canvas: UIImageView!
    var start: CGPoint?
    var currentColor:UIColor = UIColor.redColor()
    
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clearImage(sender: UIButton) {
        canvas.image = nil
    }

    @IBAction func shareImageAction(sender: UIButton) {
        let activity = UIActivityViewController(activityItems: [canvas], applicationActivities: nil)
        presentViewController(activity, animated: true, completion: nil)
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
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first!
//        print(touches.count)
        start = touch.locationInView(view)
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first!
        let end = touch.locationInView(view)
        if let start = start {
            canvas.image = drawFromPoint(canvas, start: start, toPoint: end, withColor: currentColor, lineWidth: brushWidth, alpha: opacity)
        }
        start = end
    }
    
    func drawFromPoint(canvas:UIImageView, start: CGPoint, toPoint end: CGPoint , withColor:UIColor, lineWidth:CGFloat, alpha:CGFloat) -> UIImage {
        // set the context to that of an image
        UIGraphicsBeginImageContext(canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        // draw the existing image onto the current context
        canvas.image?.drawInRect(CGRect(x: 0, y: 0,
            width: canvas.frame.size.width, height: canvas.frame.size.height))
        // draw the new line segment
        CGContextSetLineWidth(context, lineWidth)
        CGContextSetAlpha(context, alpha);
        CGContextSetStrokeColorWithColor(context, withColor.CGColor)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextStrokePath(context)
        // obtain a UIImage object from the context
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // the new image image to the new, generated image
        return newImage
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let settingsViewController = segue.destinationViewController as! SettingsViewController
        settingsViewController.delegate = self
        settingsViewController.brush = brushWidth
        settingsViewController.opacity = opacity
    }

}

extension TouchViewController: SettingsViewControllerDelegate {
    func settingsViewControllerFinished(settings: Settings) {
        self.brushWidth = settings.brush
        self.opacity = settings.opacity
    }
}

