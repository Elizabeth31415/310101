import Foundation

public func validateInput(_ input: String?) -> Double? {
    guard let input = input, let value = Double(input) else {
        print("Неверный ввод. Пожалуйста, введите действительное число.")
        return nil
    }
    return value
}
