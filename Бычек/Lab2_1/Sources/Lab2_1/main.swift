import Foundation

while true {
    print("Input number: ", terminator: "") //terminator: чтобы оставить курсор на этой же строке
    if let inputNumber: String = readLine(), isValidInput(inputNumber) {
        let intNumber: Int = Int(inputNumber)!
        print("That's correct: \(intNumber)")
        if let nextPerfect = nextPerfectNumber(after: intNumber) {
            print("Next perfect number after \(intNumber) - it's \(nextPerfect).")
        }
        break
    } else {
        print("Try again.")
    }
}
