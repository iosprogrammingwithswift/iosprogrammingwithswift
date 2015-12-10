//
//  AddStudentTableViewController.swift
//  SwiftTableViewControllerAndOtherFunnyStuff
//
//  Created by Andreas Wittmann on 09/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

class AddStudentTableViewController: UITableViewController {

    @IBOutlet weak var nameTxtfld: UITextField!
    @IBOutlet weak var matnrTxtFld: UITextField!
    @IBOutlet weak var ageTxtFld: UITextField!
    
    var newStudent:Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
    }
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
        let name:String = nameTxtfld.text! ?? "Keine Daten"
        //convert Textfield text to int()
        let age:Int? = Int(ageTxtFld.text!) ?? 0
        let matNr:Int? = Int(matnrTxtFld.text!)
        
       newStudent = Student(studentName: name, studentMatNr: matNr!, studentAge: age!)
    }
    
}
