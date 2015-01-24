//
//  Student.swift
//  MyAdventuresWithViewControllers
//
//  Created by Flori on 24.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class Student:Person {

    var courses:[String] = [String]()
    let matNr:Int
    var mark:[String:Int] = [String:Int]()
    
    init(studentMatNr:Int, studentForename:String, studentSurename: String, studentAge:Int) {
        self.matNr = studentMatNr
        super.init(personForename: studentForename, personSurname: studentSurename, personAge: studentAge, personEmail: nil)
    }
    
    func getAllCourses() -> [String] {
        return courses
    }
    
    //MARK: getPointAverages
    func getPointAverages() -> Float {
        var sumOfGrades:Int = 0
        
        for grade in mark.values {
            sumOfGrades += grade
        }
        
        var result:Float = 0.0
        if (mark.count != 0) {
            result = Float(sumOfGrades) / Float(mark.count)
        }
        return result
    }

   
}
