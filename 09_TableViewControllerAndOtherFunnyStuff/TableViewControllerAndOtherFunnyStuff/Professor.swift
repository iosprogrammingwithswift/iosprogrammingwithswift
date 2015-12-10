//
//  Professor.swift
//  TableViewControllerAndOtherFunnyStuff
//
//  Created by Flori on 10.12.15.
//  Copyright © 2015 Flori & Andy. All rights reserved.
//

import Foundation

class Professor:Person {
    let ID:Int
    var fachbereich:String?
    init(professorID:Int, professorForename:String, professorSurename: String, professorAge:Int) {
        ID = professorID
        super.init(personForename: professorForename, personSurname: professorSurename, personAge: professorAge, personEmail: nil)
    }
    
    override func getPersonAsString() -> String {
        var result = "Prof: "
        
        result += super.getPersonAsString()
        if let fachbereich = fachbereich {
            result += " \(fachbereich)"
        }
        return result
    }
}

