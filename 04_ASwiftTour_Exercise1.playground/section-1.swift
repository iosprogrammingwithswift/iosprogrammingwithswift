var person1 = Person(personForename: "Peter", personSurname: "Peter", personAge: 29)
var person2 = Person(personForename: "Flori", personSurname: "Flori", personAge: 29, personEmail: "flori@flori")

let p1 = person1.getPersonAsString()
let p2 = person2.getPersonAsString()
print(p1)
print(p2)

person1.increaseAgeAfterBirthday()
person1.getPersonAsString()
var student1:Student = Student(studentMatNr: 100000, studentForename: person1.forename, studentSurename: person1.surname, studentAge: person1.age)
var professor1:Professor = Professor(professorID: 1, professorForename: person2.forename, professorSurename: person2.surname, professorAge: person2.age)


student1.getAllCourses()

professor1.getPersonAsString()

professor1.fachbereich = "Informatik"

professor1.getPersonAsString()


var programmingCourse = Course(courseProfessor: professor1, courseName: "programming", courseCreditPoints: 5)

programmingCourse.addStudentToKurs(student1)

programmingCourse.addStudentToKurs(Student(studentMatNr: 10, studentForename: "Hans", studentSurename: "Hans", studentAge: 19))

//programmingCourse.addStudentsToKurs([])

programmingCourse.getAllParticipants()


programmingCourse.participant.first?.getPersonAsString()




let courses = student1.getAllCourses()

student1.mark[programmingCourse.name] = 1

let points = student1.getPointAverages()

programmingCourse.getCoursePointAverages()

let honorsStudents :[Student] = programmingCourse.getStudentesWithBestMark(1)

programmingCourse.getStudentesEmailAddress()