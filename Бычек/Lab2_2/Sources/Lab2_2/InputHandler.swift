import Foundation

func readInteger(prompt: String) -> Int? {
    print(prompt)
    if let input = readLine(), let number = Int(input) {
        return number
    } else {
        print("Invalid input. Please enter a valid integer.")
        return nil
    }
}

func readIntegers() -> (Int, Int) {
    var n1: Int?
    var n2: Int?

    while n1 == nil {
        n1 = readInteger(prompt: "Input the first number: ")
    }
    while n2 == nil {
        n2 = readInteger(prompt: "Input the second number: ")
    }
    
    return (n1!, n2!)
}

func readDouble(prompt: String) -> Double? {
    print(prompt)
    if let input = readLine(), let number = Double(input) {
        return number
    } else {
        print("Invalid input. Please enter a valid number.")
        return nil
    }
}

func readComplexNumbers() -> (Complex, Complex) {
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

    let complex1 = Complex(real: r1!, imaginary: i1!)
    let complex2 = Complex(real: r2!, imaginary: i2!)

    return (complex1, complex2)
}
