import Foundation
/*import Complex
import Protocols*/

public class QuadraticEquation: QuadraticEquationProtocol {
    private let a: Double
    private let b: Double
    private let c: Double

    public init?(a: Double, b: Double, c: Double) {
        guard a != 0 else {
            print("Коэффициент 'a' не может быть равен нулю для квадратного уравнения.")
            return nil
        }
        self.a = a
        self.b = b
        self.c = c
    }

    public func solve() -> [ComplexNumber] {
        let discriminant = b * b - 4 * a * c
        if discriminant > 0 {
            let sqrtD = sqrt(discriminant)
            let x1 = (-b + sqrtD) / (2 * a)
            let x2 = (-b - sqrtD) / (2 * a)
            return [ComplexNumber(real: x1, imaginary: 0), ComplexNumber(real: x2, imaginary: 0)]
        } else if discriminant == 0 {
            let x = -b / (2 * a)
            return [ComplexNumber(real: x, imaginary: 0)]
        } else {
            let sqrtD = sqrt(-discriminant)
            let realPart = -b / (2 * a)
            let imaginaryPart = sqrtD / (2 * a)
            return [
                ComplexNumber(real: realPart, imaginary: imaginaryPart),
                ComplexNumber(real: realPart, imaginary: -imaginaryPart)
            ]
        }
    }
}
