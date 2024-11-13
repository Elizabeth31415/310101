import Foundation

public struct ComplexNumber: CustomStringConvertible {
    /*CustomStringConvertible - встроенный протокол в Swift, 
    который позволяет предоставлять свою собственную 
    строковую репрезентацию для пользовательских типов данных. 
    При реализации этого протокола надо переопределить свойство description, 
    которое возвращает строку, представляющую объект.
    */
    public var real: Double
    public var imaginary: Double

    public var description: String {
        if imaginary == 0 {
            return "\(real)"
        } else if real == 0 {
            return "\(imaginary)i"
        } else {
            let sign = imaginary >= 0 ? "+" : "-"   //выбор знака
            return "\(real) \(sign) \(abs(imaginary))i"
        }
    }

    public init(real: Double, imaginary: Double) {
        self.real = real
        self.imaginary = imaginary
    }
}
