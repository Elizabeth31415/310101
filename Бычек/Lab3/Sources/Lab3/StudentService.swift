import Foundation

struct StudentService {
    static func createStudent(existingStudents: [Student]) -> Student? {    //создание нового объекта Student на основе данных, введенных пользователем

    var name: String="" // Объявляем переменную name вне цикла
    
    while true {
        print("Введите имя студента:")
        guard let inputName = readLine(), !inputName.isEmpty else {
            print("Имя не может быть пустым.")
            continue
        }
        
        if !StudentValidator.validateName(inputName) {
        print("Имя должно содержать только буквы.")
        continue    //Возвращение в начало цикла, чтобы ввести имя снова
        }
    
        name = inputName
    
        if existingStudents.contains(where: { $0.getName() == name }) { //проверка, содержит ли коллекция хотя бы один элемент, удовлетворяющий условию в замыкании 
            print("Имя должно быть уникальным. Студент с таким именем уже существует.")
            continue // Возвращаемся в начало цикла, чтобы ввести имя снова
        }
    
        break // Имя уникально и валидно, выход из цикла
    }

        print("Введите номер группы (или нажмите Enter для номера по умолчанию '10A'):")
        /*let groupNumberInput = readLine()
        let groupNumber = (groupNumberInput?.isEmpty ?? true) ? "10A" : groupNumberInput!*/

        let groupNumber="10A"

        print("Введите возраст студента (или нажмите Enter для возраста по умолчанию '18'):")
        /*let ageInput = readLine()
        let age: Int
        
        if let input = ageInput, !input.isEmpty, let parsedAge = Int(input), StudentValidator.validateAge(parsedAge) {
            age = parsedAge
        } else {
            age = 18 // Значение по умолчанию
        }*/
        let age=18
        
        return Student(name: name, groupNumber: groupNumber, age: age)
    }

    static func updateStudent(student: Student) {
        while true {
            print("\nВыберите, что хотите изменить:")
            print("1. Номер группы")
            print("2. Возраст")
            print("3. Выход")

            guard let choice = readLine(), let option = Int(choice), option >= 1 && option <= 4 else {
                print("Некорректный ввод. Попробуйте снова.")
                continue
            }

            switch option {
            case 1:
                print("Введите новый номер группы:")
                guard let newGroupNumber = readLine(), !newGroupNumber.isEmpty else {
                    print("Некорректный номер группы.")
                    continue
                }
                student.setGroupNumber(groupNumber: newGroupNumber)

            case 2:
                print("Введите новый возраст:")
                guard let ageInput = readLine(), let newAge = Int(ageInput), StudentValidator.validateAge(newAge) else {
                    print("Некорректный возраст.")
                    continue
                }
                student.setNameAge(name: student.getName(), age: newAge) // Новый возраст

            case 3:
                return // Выход из метода
            default:
                break
            }

            print("Данные успешно обновлены.")
        }
    }
}
