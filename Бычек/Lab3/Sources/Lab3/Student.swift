import Foundation

class Student {
    private var name: String
    private var groupNumber: String
    private var age: Int
    
    init(name: String = "Ivan", groupNumber: String = "10A", age: Int = 18) {
        self.name = name
        self.groupNumber = groupNumber
        self.age = age
    }
    
    func getName() -> String {
        return name
    }
    
    func getAge() -> Int {
        return age
    }
    
    func getGroupNumber() -> String {
        return groupNumber
    }
    
    func setNameAge(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func setGroupNumber(groupNumber: String) {
        self.groupNumber = groupNumber
    }
}
