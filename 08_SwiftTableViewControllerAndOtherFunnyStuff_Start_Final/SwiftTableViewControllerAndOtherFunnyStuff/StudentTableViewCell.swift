//
//  StudentTableViewCell.swift
//  SwiftTableViewControllerAndOtherFunnyStuff
//
//  Created by Andreas Wittmann on 09/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet var ageLbl: UILabel!
    
    @IBOutlet var nameLbl: UILabel!
    
    @IBOutlet var matNrLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
