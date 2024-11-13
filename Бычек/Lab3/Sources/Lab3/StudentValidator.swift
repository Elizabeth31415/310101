import Foundation

struct StudentValidator {
    static func validateName(_ name: String) -> Bool {
        return !name.isEmpty && name.allSatisfy { $0.isLetter}// || $0.isWhitespace }
    }
    
    /*static func validateGroupNumber(_ groupNumber: String) -> Bool {
        
        let regex = "^[0-9]+[A-Z]$"
        let predicate=NSPredicate(format: "SELF MATCHES %@", regex)
        
        return predicate.evaluate(with: groupNumber)
        //return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: groupNumber)
    }*/
    
    static func validateAge(_ age: Int) -> Bool {
        return age >= 16 && age <= 50 
    }
}

