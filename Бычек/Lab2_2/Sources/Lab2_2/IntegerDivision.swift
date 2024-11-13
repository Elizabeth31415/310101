import Foundation

func integerDivisionFunction() -> (Int, Int) -> Double? {
    return { numerator, denominator in
        guard denominator != 0 else {
            print("Error: Division by zero.")
            return nil
        }
        return Double(numerator) / Double(denominator)
    }
}

func performIntegerDivision(n1: Int, n2: Int) {
    let result: Double? = integerDivision(n1, n2)
    if let value = result {
        print("Result of division: \(value)")
    } else {
        print("Not correct division.")
    }
}
