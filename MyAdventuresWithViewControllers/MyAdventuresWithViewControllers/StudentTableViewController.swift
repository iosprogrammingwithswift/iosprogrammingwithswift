//
//  StudentTableViewController.swift
//  MyAdventuresWithViewControllers
//
//  Created by Flori on 23.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {
 
    
    var students = SampleData().studentsData
    
    @IBAction func saveStudent(segue: UIStoryboardSegue){
        
        let studentAddViewController = segue.sourceViewController as AddStudentViewController
        students.append(studentAddViewController.newStudent!)
        
        //update the tableView
        let indexPath:NSIndexPath = NSIndexPath(forItem: students.count-1, inSection: 0)
        
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        //hide the add student view Controller damit ihr es einmal gesehen habt.
        dismissViewControllerAnimated(true, completion: nil)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return students.count
        } else {
            return 55
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("studentCellID") as StudentCellTableViewCell
            configureCell(cell, atIndexPath:indexPath)
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("profCellID") as AwesomeProfTableViewCell

            cell.lblProfName.text = "Nr. " + String(indexPath.row)
            cell.backgroundColor = UIColor.whiteColor()
            return cell
            
            
        }
    }
    func  configureCell(cell: StudentCellTableViewCell, atIndexPath indexPath:NSIndexPath){
        
        let student = students[indexPath.row]
        //nil coalescing
        cell.lblForeName.text = student.forename ?? "StudentForeName"
        cell.lblSurName.text = student.surname ?? "StudentSurName"
        cell.lblNumber.text = String(student.matNr) ?? "StudenMatNr"

//        cell.lblNumber.text = "\(student.matNr)"
        
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionHeader:String?
        switch(section){
        case 0:
            sectionHeader = "Student"
        case 1...100:
            sectionHeader = "Professor"
        default:
            sectionHeader = "Default"
        }
        
        return sectionHeader
    }
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Student Ende"
        } else {
            return "Prof Ende"
        }
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 75.0;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showStudentDetailSegue" {
            let indexPath:NSIndexPath = tableView.indexPathForSelectedRow()!
            let student = students[indexPath.row]
            let destViewController = segue.destinationViewController as StudentDetailViewController
            destViewController.student = student
           
        }
    }
}
