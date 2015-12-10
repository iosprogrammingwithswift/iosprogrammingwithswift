//
//  StudentDetailViewController.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {
    var student:Student!
    @IBOutlet weak var lblName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = student.surname
        
    }
}
