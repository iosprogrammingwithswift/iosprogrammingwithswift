

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

class Student:Person {
    var courses = [Course]()
//    var courses = [String]()
    
    let matNr:Int
    var mark = [String:Int]()
    
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

var person1 = Person(personForename: "Peter", personSurname: "Peter", personAge: 29)
var person2 = Person(personForename: "Flori", personSurname: "Flori", personAge: 29, personEmail: "flori@flori")

let p1 = person1.getPersonAsString()
let p2 = person2.getPersonAsString()
print(p1)
print(p2)

person1.increaseAgeAfterBirthday()

person1.getPersonAsString()
var student1:Student = Student(studentMatNr: 100000, studentForename: person1.forename, studentSurename: person1.surname, studentAge: person1.age)
var student2:Student = Student(studentMatNr: 100001, studentForename: person2.forename, studentSurename: person2.surname, studentAge: person2.age)

var professor1:Professor = Professor(professorID: 1, professorForename: person2.forename, professorSurename: person2.surname, professorAge: person2.age)

student1.getPersonAsString()

for course in student1.getAllCourses() {
    print("\(course.name) ")
}

professor1.getPersonAsString()

professor1.fachbereich = "Informatik"

professor1.getPersonAsString()


var programmingCourse = Course(courseProfessor: professor1, courseName: "programming", courseCreditPoints: 5)

programmingCourse.addStudentToKurs(student1)

programmingCourse.addStudentToKurs(Student(studentMatNr: 10, studentForename: "Hans", studentSurename: "Hans", studentAge: 19))

programmingCourse.addStudentsToKurs([student1,student2])

programmingCourse.getAllParticipants()


programmingCourse.participant.first?.getPersonAsString()




let courses = student1.getAllCourses()

student1.mark[programmingCourse.name] = 1


let points = student1.getPointAverages()

programmingCourse.getCoursePointAverages()

//let honorsStudents = programmingCourse.getAllStudentsWithGivenMark(1)

programmingCourse.getStudentenEmailAddress()
