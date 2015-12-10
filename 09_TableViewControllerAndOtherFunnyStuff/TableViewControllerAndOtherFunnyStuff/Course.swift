//
//  Course.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import Foundation



class Course {
    let prof:Professor
    let name:String
    let creditPoints:Int
    var participant = [Student]()
    
    init(courseProfessor: Professor, courseName: String, courseCreditPoints: Int) {
        prof = courseProfessor
        name = courseName
        creditPoints = courseCreditPoints
    }
    
    func addStudentToKurs(student:Student) {
        participant.append(student)
    }
    
    func addStudentsToKurs(students:[Student]) {
        participant.appendContentsOf(students)
    }
    
    func getAllParticipants() -> [Student]{
        return participant
    }
    //MARK: guard
    func getStudentenEmailAddress() ->[String]{
        var emailA:[String] = []
        for student in participant{
            guard let email = student.email else {
                continue
            }
            emailA.append(email)
        }
        return emailA
    }
    
    
    //MARK: where
    func getAllStudentsWithGivenMark(mark:Int) ->[Student]{
        var guys = [Student]()
        for student in participant where Int(student.mark[name]!.value) == mark{
            guys.append(student)
        }
        return guys
    }
    //MARK: getCoursePointAverages
    func getCoursePointAverages() -> Float {
        var sumOfGrades = 0
        var numberOfStudents = 0
        for student in participant {
            let optionalMark  = student.mark[name]
            if let mark = optionalMark {
                sumOfGrades += mark
                numberOfStudents += 1
            }
        }
        var result:Float = 0.0
        if (!participant.isEmpty) {
            result = Float(sumOfGrades) / Float(numberOfStudents)
        }
        return result
    }
    
    func getCoursePointAveragesWithMap() -> Float {
        let allPoints = participant.flatMap({student in student.mark[name]})
        let summeAllerNoten = allPoints.reduce(0, combine: +)
        let result = Float(summeAllerNoten) / Float(participant.count)
        return result
    }
    
    func arschloecherschreibeallesineinerZeile() -> Float {
        return Float(participant.flatMap({$0.mark[name]}).reduce(0, combine: +)) / Float(participant.count)
        
    }
}
