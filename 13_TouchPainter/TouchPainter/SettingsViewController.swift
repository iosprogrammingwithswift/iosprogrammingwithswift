//
//  SettingsViewController.swift
//  TouchPainter
//
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

struct Settings {
    var brush: CGFloat
    var opacity: CGFloat
}

protocol SettingsViewControllerDelegate: class {
    func settingsViewControllerFinished(settings: Settings)
}

class SettingsViewController: UIViewController {
    weak var delegate: SettingsViewControllerDelegate?
    var brush: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    
    @IBOutlet weak var labelBrush: UILabel!
    @IBOutlet weak var labelOpacity: UILabel!
    @IBOutlet weak var sliderBrush: UISlider!
    @IBOutlet weak var sliderOpacity: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBrush.text = String(format: "%.2f", brush)
        labelOpacity.text = String(format: "%.2f", opacity)
        sliderBrush.value = Float(brush)
        sliderOpacity.value = Float(opacity)
    }
    
    @IBAction func close(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        let s = Settings(brush: brush, opacity: opacity)
        self.delegate?.settingsViewControllerFinished(s)
    }
    
    @IBAction func sliderSizeChanged(sender: UISlider) {
        brush = CGFloat(sender.value)
        labelBrush.text = String(format: "%.2f", brush)
    }
    
    @IBAction func sliderOpacityChanged(sender: UISlider) {
        opacity = CGFloat(sender.value)
        labelOpacity.text = String(format: "%.2f", opacity)
    }
}
