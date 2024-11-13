/*import Foundation

let integerDivision: (Int, Int) -> Double? = { numerator, denominator in
    guard denominator != 0 else {
        print("Error: Division by zero.")
        return nil
    }
    return Double(numerator) / Double(denominator)
}

// Функция для безопасного ввода чисел
func readInteger(prompt: String) -> Int? {
    print(prompt)
    if let input = readLine(), let number = Int(input) {
        return number
    } else {
        print("Invalid input. Please enter a valid integer.")
        return nil
    }
}

// Чтение чисел с защитой от нечислового ввода
var n1: Int?
var n2: Int?

while n1 == nil {
    n1 = readInteger(prompt: "Input the first number: ")
}
while n2 == nil {
    n2 = readInteger(prompt: "Input the second number: ")
}

// Выполнение деления
if let n1: Int = n1, let n2: Int = n2 {
    let result: Double? = integerDivision(n1, n2)
    if let value: Double = result {
        print("Result of division: \(value)")
    } else {
        print("Not correct division.")
    }
}



// Структура для комплексного числа
struct Complex {
    var real: Double
    var imaginary: Double
}

// Замыкание для деления комплексных чисел
let complexDivision: (Complex, Complex) -> Complex? = { numerator, denominator in
    guard denominator.real != 0 || denominator.imaginary != 0 else {
        print("Error: Null.")
        return nil
    }    
    let denominatorMagnitude: Double = denominator.real * denominator.real + denominator.imaginary * denominator.imaginary
    let realPart: Double = (numerator.real * denominator.real + numerator.imaginary * denominator.imaginary) / denominatorMagnitude
    let imaginaryPart: Double = (numerator.imaginary * denominator.real - numerator.real * denominator.imaginary) / denominatorMagnitude
    return Complex(real: realPart, imaginary: imaginaryPart)
}

//защита от ввода нечисловых данных
func readDouble(prompt: String) -> Double? {
    print(prompt)
    if let input: String = readLine(), let number: Double = Double(input) {
        return number
    } else {
        print("Invalid input. Please enter a valid number.")
        return nil
    }
}

var r1: Double?
var i1: Double?
var r2: Double?
var i2: Double?

while r1 == nil {
    r1 = readDouble(prompt: "Input real part of the first complex number: ")
}
while i1 == nil {
    i1 = readDouble(prompt: "Input imaginary part of the first complex number: ")
}
while r2 == nil {
    r2 = readDouble(prompt: "Input real part of the second complex number: ")
}
while i2 == nil {
    i2 = readDouble(prompt: "Input imaginary part of the second complex number: ")
}

let complex1: Complex = Complex(real: r1!, imaginary: i1!)
let complex2: Complex = Complex(real: r2!, imaginary: i2!)

if let result: Complex = complexDivision(complex1, complex2) {
    if result.imaginary<0 {
        print("Result of division: \(result.real) - \(-1*result.imaginary)i")
    }
    else {
        print("Result of division: \(result.real) + \(result.imaginary)i")
    }
} else {
    print("Not correct division.")
}*/

import Foundation

// Импортируем функции из других файлов
let integerDivision: (Int, Int) -> Double? = integerDivisionFunction()
let complexDivision = complexDivisionFunction()

// Чтение целых чисел
let (n1, n2) = readIntegers()
performIntegerDivision(n1: n1, n2: n2)

print("     Complex Division ")
let (complex1, complex2) = readComplexNumbers()
performComplexDivision(complex1: complex1, complex2: complex2)
