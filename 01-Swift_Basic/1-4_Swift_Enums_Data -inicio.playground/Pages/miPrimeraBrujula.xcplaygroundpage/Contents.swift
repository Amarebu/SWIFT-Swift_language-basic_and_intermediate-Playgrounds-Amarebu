//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

enum Compaass{
    
    case north(String)
    case south(String)
    case west(String)
    case east(String)
    case northCoordinate(Float)
    case westCoordinate(Float)
    case eastCoordinate(Float)
    case southCoordinate(Float)
    
}

let orientation1: Compaass = .north("North")
let oritentation2: Compaass = .northCoordinate(567.895)

switch orientation1 {
case .north(let name):
    print("oreintacion \(name)")
case .northCoordinate(let name):
    print("orientacion \(name)")
default:
    print("defecto")
}

switch oritentation2 {
case .north(let name):
    print("oreintacion \(name)")
case .northCoordinate(let name):
    print("orientacion \(name)")
default:
    print("defecto")
}


//: [Next](@next)
