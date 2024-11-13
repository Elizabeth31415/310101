import Foundation
//import Complex 

public protocol QuadraticEquationProtocol {
    //реализация метода solve, который возвращает
    //массив объектов ComplexNumber в качестве корней уравнения
    func solve() -> [ComplexNumber]
}
