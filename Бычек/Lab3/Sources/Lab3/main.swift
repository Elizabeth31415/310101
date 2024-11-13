import Foundation

var students: [Student] = [Student]()   //создание пустого массива студентов

for _ in 1...5 {
    print("\nВведите студента")
    if let student = StudentService.createStudent(existingStudents: students) {
        students.append(student)    //добавление студента в массив
        print("\nСтудент добавлен")
    } else {
        print("Студент не был создан из-за ошибок ввода.")
    }
}

// Вывод данных о студентах
for student: Student in students {
    print("Name: \(student.getName()), Age: \(student.getAge()), Group Number: \(student.getGroupNumber())")

}

for student: Student in students {
    print("\n")
    print("Name: \(student.getName()), Age: \(student.getAge()), Group Number: \(student.getGroupNumber())")
    StudentService.updateStudent(student: student)
}

for student: Student in students {
    print("Name: \(student.getName()), Age: \(student.getAge()), Group Number: \(student.getGroupNumber())")
}