//
//  Person.swift
//  MyAdventuresWithViewControllers
//
//  Created by Flori on 24.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

import UIKit

class Person {
    let forename:String
    let surname:String
    var age:Int
    var email:String?
    
    convenience init(personForename: String, personSurname: String, personAge: Int) {
        self.init(personForename: personForename, personSurname: personSurname, personAge: personAge, personEmail:nil)
    }
    
    init(personForename: String, personSurname: String, personAge: Int, personEmail: String?) {
        forename = personForename
        surname = personSurname
        age = personAge
        email = personEmail
    }
    
    func getPersonAsString() -> String {
        //Version 1
        /*
        if email == nil {
        return "\(forename) \(surname) (\(age))"
        } else {
        return "\(forename) \(surname) (\(age)) [\(email)]"
        }
        // */
        
        //Version 2 (ist schöner)
        var result:String = "\(forename) \(surname) (\(age))"
        if let mail = email {
            result += " \(mail)"
        }
        return result
    }
    
    func increaseAgeAfterBirthday() {
        age++
    }
}