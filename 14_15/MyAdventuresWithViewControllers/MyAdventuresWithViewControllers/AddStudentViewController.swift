//
//  AddStudentViewController.swift
//  MyAdventuresWithViewControllers
//
//  Created by Flori on 24.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class AddStudentViewController: UITableViewController {
    @IBOutlet weak var txtfldForename: UITextField!

    @IBOutlet weak var txtfldSurname: UITextField!
    @IBOutlet weak var txtfldAge: UITextField!
    
    @IBOutlet weak var txtfldNumber: UITextField!
    
    var newStudent:Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let forename:String = txtfldForename.text
        let surname = txtfldSurname.text
        
        var age:Int = txtfldAge.text.toInt() ?? 0
        var number2:Int = txtfldAge.text.toInt() ?? 0
        
        newStudent = Student(studentMatNr: number2, studentForename: forename, studentSurename: surname, studentAge: age)
        
    }
     
}
