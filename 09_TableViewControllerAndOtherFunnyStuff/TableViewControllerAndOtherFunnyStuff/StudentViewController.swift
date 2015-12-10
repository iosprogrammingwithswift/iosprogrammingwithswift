//
//  ViewController.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    var students:[Student] = studentArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //get Cell with the Identifier from Storyboard!!
        let cell = tableView.dequeueReusableCellWithIdentifier("StudentCellIdentifier") as! StudentTableViewCell
        //indexPath.section
        
        print("\(indexPath.section) -  \(indexPath.row)")
        let student = students[indexPath.row]
        cell.configureCellForStudent(student)
        
        

        return cell
        
        
    }
    
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    
    
    
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        //tableView.beginUpdates()
        switch editingStyle {
        case .Delete:
            print("löschen")
            students.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        default:
            print("nichts machen")
        }
        //tableView.endUpdates()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        sender
        if segue.identifier == "showStudentDetail"{
            
            let indexPath = tableView.indexPathForSelectedRow!
            let student = students[indexPath.row]
            
            let d = segue.destinationViewController as! StudentDetailViewController
            d.student = student
                        
        }
    }
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
