//: [Previous](@previous) | [Next](@next)


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

var person1 = Person(personForename: "Peter", personSurname: "Peter", personAge: 29)
var person2 = Person(personForename: "Flori", personSurname: "Flori", personAge: 29, personEmail: "flori@flori")

let p1 = person1.getPersonAsString()
let p2 = person2.getPersonAsString()
print(p1)
print(p2)

person1.increaseAgeAfterBirthday()
person1.getPersonAsString()


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


var student1:Student = Student(studentMatNr: 100000, studentForename: person1.forename, studentSurename: person1.surname, studentAge: person1.age)


class Professor:Person {
    let ID:Int
    var fachbereich:String?
    init(professorID:Int, professorForename:String, professorSurename: String, professorAge:Int) {
        ID = professorID
        super.init(personForename: professorForename, personSurname: professorSurename, personAge: professorAge, personEmail: nil)
    }
    
    override func getPersonAsString() -> String {
        var result:String = super.getPersonAsString()
        if let bereich = fachbereich {
            result += " \(bereich)"
        }
        return result
    }
}

var professor1:Professor = Professor(professorID: 1, professorForename: person2.forename, professorSurename: person2.surname, professorAge: person2.age)


student1.getAllCourses()

professor1.getPersonAsString()

professor1.fachbereich = "Informatik"

professor1.getPersonAsString()

class Course {
    let prof:Professor
    let name:String
    let creditPoints:Int
    var participant:[Student] = [Student]()
    
    init(courseProfessor: Professor, courseName: String, courseCreditPoints: Int) {
        prof = courseProfessor
        name = courseName
        creditPoints = courseCreditPoints
    }
    
    func addStudentToKurs(student:Student) {
        participant.append(student)
    }
    
    func addStudentsToKurs(students:[Student]) {
        participant = students
    }
    
    func getAllParticipants() -> [Student]{
        return participant
    }
    
    //MARK: getCoursePointAverages
    func getCoursePointAverages() -> Float {
        var sumOfGrades:Int = 0
        for student in participant {
            let optionalMark  = student.mark[name]
            if let definiateMark = optionalMark {
                sumOfGrades += definiateMark
            }
        }
        var result:Float = 0.0
        if (participant.count != 0) {
            result = Float(sumOfGrades) / Float(participant.count)
        }
        return result
    }
}

var programmingCourse = Course(courseProfessor: professor1, courseName: "programming", courseCreditPoints: 5)

programmingCourse.addStudentToKurs(student1)

programmingCourse.addStudentToKurs(Student(studentMatNr: 10, studentForename: "Hans", studentSurename: "Hans", studentAge: 19))

programmingCourse.addStudentsToKurs([])

programmingCourse.getAllParticipants()


programmingCourse.participant.first?.getPersonAsString()


let courses = student1.getAllCourses()

student1.mark[programmingCourse.name] = 1

let points = student1.getPointAverages()

programmingCourse.getCoursePointAverages()


//: [Previous](@previous) | [Next](@next)
