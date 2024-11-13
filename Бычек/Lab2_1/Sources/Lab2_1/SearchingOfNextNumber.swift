import Foundation

func nextPerfectNumber(after number: Int) -> Int? {
    var currentNumber = number + 1
    while true {
        if isPerfectNumber(currentNumber) {
            return currentNumber
        }
        currentNumber += 1
    }
}