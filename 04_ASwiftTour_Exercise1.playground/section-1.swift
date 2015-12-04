
class Person {
    let forename:String
    let surname:String
    var age:Int
    var mail:String?

    init(personForename: String, personSurname: String, personAge: Int) {
        self.forename = personForename
        self.surname = personSurname
        self.age = personAge
    }
    
    convenience init(personForename: String, personSurname: String, personAge: Int, personEmail: String?) {
        self.init(personForename: personForename, personSurname: personSurname, personAge: personAge)
        mail = personEmail
    }

    func getPersonAsString() -> String {
        var result = "\(forename) \(surname) (\(age))"

        if let mail = mail {
            result += " \(mail)"
        }
        return result
    }
    
    func increaseAgeAfterBirthday() {
        age += 1
    }
}


var person1 = Person(personForename: "Peter", personSurname: "Peter", personAge: 29)
var person2 = Person(personForename: "Flori", personSurname: "Flori", personAge: 29, personEmail: "flori@flori")

//Peter Peter (29 nil)
//Flori Flori (29 Optional("flori@flori"))

let p1 = person1.getPersonAsString()
let p2 = person2.getPersonAsString()
//Peter Peter (29)
print(p1)
//Flori Flori (29) flori@flori
print(p2)

person1.increaseAgeAfterBirthday()
print(person1.getPersonAsString())
//Peter Peter (30)
print(p2)


class Professor : Person {
    let profId:Int
    var fachbereich:String?
    
    init(professorID: Int, professorForename: String, professorSurename: String, professorAge: Int) {
        profId = professorID
        super.init(personForename: professorForename, personSurname: professorSurename, personAge: professorAge)
    }
    
    
    override func getPersonAsString() -> String {
        var output = super.getPersonAsString() + " \(profId)"
        if let fachbereich = fachbereich {
            output += " \(fachbereich)"
        }
        return output
    }
}


struct Course {
    let professor:Professor
    let name:String
    let creditPoints:Int
    var participants:[Student] = []
    
    init(courseProfessor: Professor, courseName: String, courseCreditPoints: Int) {
        professor = courseProfessor
        name = courseName
        creditPoints = courseCreditPoints
    }
    
    mutating func addStudentToKurs(student:Student) {
        participants.append(student)
    }
    
    func getAllParticipants() -> [Student] {
        return participants
    }
}



class Student: Person {
    let matNr:Int
    var courses:[Course] = []
    var mark:[String:Int] = [String:Int]()

    
    init(studentMatNr: Int, studentForename: String, studentSurename: String, studentAge: Int) {
        matNr = studentMatNr
        super.init(personForename: studentForename, personSurname: studentSurename, personAge: studentAge)
    }
    
    override func getPersonAsString() -> String {
        return super.getPersonAsString() + " \(matNr)"
    }
    
    func getAllCourses() -> [Course] {
        return courses
    }

}



var student1:Student = Student(studentMatNr: 100000, studentForename: person1.forename, studentSurename: person1.surname, studentAge: person1.age)

student1.getPersonAsString()
//"Peter Peter (30) [Mat: 100000]"

student1.getAllCourses()
//[]

var professor1:Professor = Professor(professorID: 1, professorForename: person2.forename, professorSurename: person2.surname, professorAge: person2.age)

professor1.getPersonAsString()
//"Prof: Flori Flori (29)"

professor1.fachbereich = "Informatik"

professor1.getPersonAsString()
//"Prof: Flori Flori (29) Informatik"


var programmingCourse = Course(courseProfessor: professor1, courseName: "programming", courseCreditPoints: 5)

programmingCourse.addStudentToKurs(student1)

programmingCourse.addStudentToKurs(Student(studentMatNr: 10, studentForename: "Hans", studentSurename: "Hans", studentAge: 19))

//programmingCourse.addStudentsToKurs([])

programmingCourse.getAllParticipants()


programmingCourse.participants.first?.getPersonAsString()



let courses = student1.getAllCourses()

student1.mark[programmingCourse.name] = 1

let points = student1.getPointAverages()

programmingCourse.getCoursePointAverages()

let honorsStudents :[Student] = programmingCourse.getStudentesWithBestMark(1)

programmingCourse.getStudentesEmailAddress()

