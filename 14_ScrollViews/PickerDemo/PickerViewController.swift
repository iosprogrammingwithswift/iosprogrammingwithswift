//
//  ViewController.swift
//  PickerDemo
//
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var matNrLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var fachLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var coursePicker: UIPickerView!
    
    var student:Student!
    var courses:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courses = ["Informatik", "Mathe", "Physik"]

        student = Student(studentName: "Andy", studentMatNr: 123112, studentAge: 12)
        
        namelbl.text = student.name
        ageLbl.text = String(student.age)
        matNrLbl.text = String(student.matNr)

        
    }

    //UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    //UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let course = courses[row]
        student.fach = course
        fachLbl.text = course
    }

    @IBAction func dateChanged(sender: UIDatePicker) {
        let d = sender.date
        student.date = d
        lblDate.text = sender.date.formattedDate()
    }

}


extension NSDate {
    func formattedStringForDate(format: String) -> String {
        let formatter = NSDateFormatter()
        let locale = NSLocale.currentLocale(); //de_DE
        
        formatter.locale = locale
        formatter.dateFormat = format
        
        return formatter.stringFromDate(self)
    }
    
    func formattedClockTime() -> String {
        return formattedStringForDate("HH:mm:ss")
    }
    
    func formattedDate() -> String {
        return formattedStringForDate("dd-MM-YY")
    }
    
    func formattedDateTime() -> String {
        return formattedStringForDate("yyyy-MM-dd HH:mm:ss")
    }
}



