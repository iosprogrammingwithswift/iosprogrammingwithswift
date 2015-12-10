//
//  Person.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import Foundation

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
        var result = "\(forename) \(surname) (\(age))"
        if let email = email {
            result += " \(email)"
        }
        return result
    }
    
    func increaseAgeAfterBirthday() {
        age += 1
    }
}

