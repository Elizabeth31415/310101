import Foundation

func isValidInput(_ input: String) -> Bool {
    guard let number = Int(input), number >= 0 else { 
        return false 
    }
    return true
}