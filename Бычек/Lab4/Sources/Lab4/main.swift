/*import Complex
import Protocols
import Solvers
import Utils*/

import Foundation

// Функция для получения и проверки ввода коэффициентов
    func getCoefficient(prompt: String) -> Double {
        while true {
            print(prompt, terminator: ": ")
            if let input = readLine(), let value = validateInput(input) {
                return value
            }
        print("Ошибка ввода! Пожалуйста, введите корректное число.")
    }
}

print("Введите коэффициенты квадратного уравнения (ax^2 + bx + c = 0):")

let a = getCoefficient(prompt: "Коэффициент a")
let b = getCoefficient(prompt: "Коэффициент b")
let c = getCoefficient(prompt: "Коэффициент c")

// Вычисление корней
if let solver: QuadraticEquationProtocol = QuadraticEquation(a: a, b: b, c: c) {
//if let solver = QuadraticEquation(a: a, b: b, c: c) as? QuadraticEquationProtocol {
    let roots = solver.solve()
    print("Корни уравнения: \(roots)")
} else {
    print("Ошибка: уравнение не является квадратным, так как a = 0.")
}