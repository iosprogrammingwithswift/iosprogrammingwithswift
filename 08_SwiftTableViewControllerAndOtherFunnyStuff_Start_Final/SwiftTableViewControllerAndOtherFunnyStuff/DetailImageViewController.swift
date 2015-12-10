//
//  DetailImageViewController.swift
//  SwiftTableViewControllerAndOtherFunnyStuff
//
//  Created by Andreas Wittmann on 10/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

class DetailImageViewController: UIViewController {

    var image:UIImage?
    @IBOutlet var detailImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backToLastVC(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
  
}
