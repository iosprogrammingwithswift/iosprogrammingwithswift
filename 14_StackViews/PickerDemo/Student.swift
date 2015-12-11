//
//  student.swift
//  swiftControllerUI
//
//  Created by Andreas Wittmann on 08/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

public class Student: NSObject {
    
    var name:String
    let matNr:Int
    var age: Int
    var date:NSDate?
    var fach:String?
    
    init(studentName:String,studentMatNr:Int,studentAge:Int){
        self.name = studentName
        self.matNr = studentMatNr
        self.age = studentAge
        super.init()
    }
    
}
