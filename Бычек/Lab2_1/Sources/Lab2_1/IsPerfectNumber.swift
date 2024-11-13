import Foundation

func isPerfectNumber(_ number: Int) -> Bool {
    var sumOfDivisors = 0
    for i in 1..<number {
        if number % i == 0 {
            sumOfDivisors += i
        }
    }
    return sumOfDivisors == number
}