//
//  ViewController.swift
//  GesturesTutorial
//
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class GesturesViewController: UIViewController {
    @IBOutlet weak var gestureName: UILabel!

    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var rotateView: UIView!
    @IBOutlet weak var longPressView: UIView!
    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var panView: UIView!
    @IBOutlet weak var swipeView: UIView!
    
    var rotation = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    func tappedView(recognizer : UITapGestureRecognizer) {
        //message: "tapped"
        showGestureName("Tapped")
    }
    
    func swipedView(recognizer : UISwipeGestureRecognizer) {
        //message: "Swiped"
        showGestureName("Swiped")

    }
    
    func longPressedView(recognizer : UILongPressGestureRecognizer) {
        //message: "longpress"
        showGestureName("LongPress")

    }
    
    func rotatedView(sender: UIRotationGestureRecognizer) {
        showGestureName("Rotated")

    }

    func draggedView(sender: UIPanGestureRecognizer) {
        showGestureName("Dragged")

    }
    
    @IBAction func pinchedView(sender: UIPinchGestureRecognizer) {
        print("Pinch ")
        showGestureName("Pinch")

    }
    
    func showAlertViewControllerWith(title: String, message: String) {
        let tapAlert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    
    func showGestureName(name: String) {
        gestureName.text = name
        UIView.animateWithDuration(1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animateWithDuration(1.0) { self.gestureName.alpha = 0 }
        })
    }
}

