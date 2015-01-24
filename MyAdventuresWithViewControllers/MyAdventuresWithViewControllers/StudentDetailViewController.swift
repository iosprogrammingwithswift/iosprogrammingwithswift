//
//  StudentDetailViewController.swift
//  MyAdventuresWithViewControllers
//
//  Created by Flori on 24.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    var student:Student!
    
    @IBAction func doSomeThingAction(sender: UIButton) {
        println("hier wird delegate gezeigt")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = "Name: \(student.surname) und \(student.forename)"

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

}
