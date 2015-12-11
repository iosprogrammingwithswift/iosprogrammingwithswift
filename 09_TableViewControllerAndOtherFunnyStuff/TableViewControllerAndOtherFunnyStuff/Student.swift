//
//  Student.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import Foundation


class Student:Person {
    var courses = [Course]()
    //    var courses = [String]()
    
    let matNr:Int
    var mark = [String:Int]()
    var date:NSDate?
    
    init(studentMatNr:Int, studentForename:String, studentSurename: String, studentAge:Int) {
        self.matNr = studentMatNr
        super.init(personForename: studentForename, personSurname: studentSurename, personAge: studentAge, personEmail: nil)
    }
    
    override func getPersonAsString() -> String {
        var result = super.getPersonAsString()
        result += " [Mat: \(matNr)]"
        return result
    }
    
    func getAllCourses() -> [Course] {
        return courses
    }
    
    //MARK: getPointAverages
    func getPointAverages() -> Float {
        var sumOfGrades = 0
        
        for grade in mark.values {
            sumOfGrades += grade
        }
        
        var result:Float = 0.0
        if (!mark.isEmpty) {
            result = Float(sumOfGrades) / Float(mark.count)
        }
        return result
    }
}

