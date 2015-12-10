//
//  StudentTableViewCell.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAlter: UILabel!
    @IBOutlet weak var lblMatrikelnummer: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    func configureCellForStudent(student:Student) {
        lblName.text = "\(student.forename) \(student.surname)"
        lblAlter.text = String(student.age)
        lblMatrikelnummer.text = "\(student.matNr)"
    }
}
