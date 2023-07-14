//: [Previous](@previous)

import Foundation


/*
 Crear una clase coche:
    marca
    modelo
    color
    matricula
    precio
 
 metodos:
    arrancar
    frenar
    gira con diferentes grados
    garage
 
 grarage:
    ciudad
    codigo postal
 */

enum Marca {
    case seat
    case renault
    case peugeot
    case BMW
    case Mercedes
}

enum Color {
    
    case blanco
    case rojo
    case verde
    case negro
}

enum Estado {
    case apagado
    case encendido
}

struct Coche {
    
    let marca: Marca
    let modelo: String
    var color: Color
    let matricula: String
    var precio: Float
    let garage: Garage
    var ordenadorAbordo: Bool
    var estado: Estado = .apagado
   /*
    init(marca: Marca, modelo: String, color: Color, matricula: String, precio: Float){
        self.marca = marca
        self.modelo = modelo
        self.color = color
        self.matricula = matricula
        self.precio = precio
    }
    */
    mutating func arrancar() {
        if estado == Estado.apagado {
            estado = Estado.encendido
        }else {
            estado = Estado.apagado
        }
        /*
        (estado == Estado.apagado) ? (estado = Estado.encendido) : (estado = Estado.encendido)
        
        estado = (estado == Estado.apagado) ? Estado.encendido : Estado.apagado
        */
        
        func prueba() {
            var a = 9
            var b = 10
        
        }
        
        //(estado == Estado.apagado) ? prueba : prueba
        
        print("Arrancar el coche")
    }
    
    func frenar() {
        print("El cche se está frenando")
    }
    
    func giro(grado: Int) {
        print("Giro estos grados \(grado) ")
    }
    
    func aparcar(ciudad:String, dirección: String) -> String {
        return "que"
    }
    
}

struct Garage {
    var ciudad: String
    var codigoPostal: String
    var direccion: String
}

struct Persona {
    var id: String
    var garage: Garage
    var coche: [Coche]
    

}

//: [Next](@next)
