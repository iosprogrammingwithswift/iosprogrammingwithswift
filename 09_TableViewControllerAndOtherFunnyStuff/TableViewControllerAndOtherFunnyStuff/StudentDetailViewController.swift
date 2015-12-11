//
//  StudentDetailViewController.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import UIKit

class StudentDetailViewController:UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let courses = [
        "a",
        "b",
        "c",
        "was mit Bücher"
    ]
    
    
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    
    var student:Student!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var uiDatePicker: UIDatePicker!
    @IBAction func dateChangedAction(sender: UIDatePicker) {
        
        let d = sender.date
        student.date = d
        lblDate.text = student.date?.formattedStringForDate(.clockTime)
        
    }
    @IBOutlet weak var einOutLetAufDenPicker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        einOutLetAufDenPicker.dataSource = self
        einOutLetAufDenPicker.delegate = self
        
        lblName.text = student.surname
//        lblDate.text = NSDate().formattedStringForDate(.date)
        lblDate.text = uiDatePicker.date.formattedStringForDate(.date)
    }
}


enum NSDateFormatPattern:String {
    case clockTime = "HH:mm:ss"
    case date = "dd-MM-YY"
    case dateTimeWithMilliseconds = "yyyy-MM-dd HH:mm:ss,SSS ZZZ"
    case dateTime = "yyyy-MM-dd HH:mm:ss"
};

extension NSDate {
    func formattedStringForDate(format: NSDateFormatPattern) -> String {
        let formatter = NSDateFormatter()
        let locale = NSLocale.currentLocale(); //de_DE
        
        formatter.locale = locale
        formatter.dateFormat = format.rawValue
        
        return formatter.stringFromDate(self)
    }
}


