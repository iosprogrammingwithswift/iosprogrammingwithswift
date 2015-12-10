//
//  StudentTableViewController.swift
//  SwiftTableViewControllerAndOtherFunnyStuff
//
//  Created by Andreas Wittmann on 09/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {

    var students:[Student] = StudentsData
    
    @IBAction func saveStudent(segue:UIStoryboardSegue) {
        let studentAddViewController = segue.sourceViewController as! AddStudentTableViewController
        
        //add the new student to the studentArray
        students.append(studentAddViewController.newStudent)
        
        //update the tableView
        let indexPath:NSIndexPath = NSIndexPath(forItem: students.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        //hide the add student view controller
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func returnFromDetailView(segue:UIStoryboardSegue) {
       print("test returnFromDetailView")
        let detailViewController = segue.sourceViewController as! DetailStudentViewController
        let newStudent:Student = detailViewController.newStudent
        //
        for student in students {
            if(student.matNr == newStudent.matNr){
                student.name = newStudent.name
            }
        }
        
        //update the tableView
        tableView.reloadData()
        
        //hide the add student view controller
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override  func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return students.count
    }

    
    override  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StudentCell", forIndexPath: indexPath) as! StudentTableViewCell

        //get student at rowatIndex
        let student:Student = students[indexPath.row]
        
        // Configure the cell...
        cell.nameLbl.text = student.name
        cell.matNrLbl.text = String(student.matNr)
        
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            students.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    **/

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    
    */

    // MARK: - Navigation


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showStudentDetail"{
            let indexPath:NSIndexPath = tableView.indexPathForSelectedRow!
            let student: Student = students[indexPath.row]
            let viewController = segue.destinationViewController as! DetailStudentViewController
            viewController.student = student
        
        }
    
    }
}
