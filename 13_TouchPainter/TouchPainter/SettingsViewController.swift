//
//  SettingsViewController.swift
//  TouchPainter
//
//  Created by Flori on 11.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

struct Settings {
    var brush:CGFloat
    var opacity:CGFloat
}

protocol SettingsViewControllerDelegate: class {
    func settingsViewControllerFinished(settings: Settings)
}


class SettingsViewController: UIViewController {
    @IBOutlet weak var labelBrush: UILabel!
    @IBOutlet weak var labelOpacity: UILabel!
    @IBOutlet weak var sliderBrush: UISlider!
    @IBOutlet weak var sliderOpacity: UISlider!
    
    weak var delegate:SettingsViewControllerDelegate?
    
    var brush: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBrush.text = String(format: "%.2f", brush)
        labelOpacity.text = String(format: "%.2f", opacity)
        sliderBrush.value = Float(brush)
        sliderOpacity.value = Float(opacity)
    }
    
    @IBAction func closeAction(sender: UIBarButtonItem) {
        let s = Settings(brush: brush, opacity: opacity)
        delegate?.settingsViewControllerFinished(s)
        dismissViewControllerAnimated(true, completion: nil)
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