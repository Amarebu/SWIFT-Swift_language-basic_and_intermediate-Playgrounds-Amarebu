//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrcode(String)
}

let productBarCode: Barcode = .qrcode("holaaa")
let productBarCode2: Barcode = .upc(3,5,67,8)

switch productBarCode {
case .qrcode(let value):
    print("Thie qrcode is \(value)")
case.upc(let value1, let value2, let value3, let value4):
    print("los valore \(value1),\(value2),\(value3),\(value4)")
}

switch productBarCode2 {
case .qrcode(let value):
    print("Thie qrcode is \(value)")
case.upc(let value1, let value2, let value3, let value4):
    print("los valore \(value1),\(value2),\(value3),\(value4)")
}


// Puedo coger un elemento especifico de productBarcode2 ? 
