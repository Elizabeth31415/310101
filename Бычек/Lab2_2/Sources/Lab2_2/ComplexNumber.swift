import Foundation

struct Complex {
    var real: Double
    var imaginary: Double
}

func complexDivisionFunction() -> (Complex, Complex) -> Complex? {
    return { numerator, denominator in
        guard denominator.real != 0 || denominator.imaginary != 0 else {
            print("Error: Null.")
            return nil
        }
        let denominatorMagnitude = denominator.real * denominator.real + denominator.imaginary * denominator.imaginary
        let realPart = (numerator.real * denominator.real + numerator.imaginary * denominator.imaginary) / denominatorMagnitude
        let imaginaryPart = (numerator.imaginary * denominator.real - numerator.real * denominator.imaginary) / denominatorMagnitude
        return Complex(real: realPart, imaginary: imaginaryPart)
    }
}

func performComplexDivision(complex1: Complex, complex2: Complex) {
    if let result = complexDivision(complex1, complex2) {
        if result.imaginary < 0 {
            print("Result of division: \(result.real) - \(-result.imaginary)i")
        } else {
            print("Result of division: \(result.real) + \(result.imaginary)i")
        }
    } else {
        print("Not correct division.")
    }
}
