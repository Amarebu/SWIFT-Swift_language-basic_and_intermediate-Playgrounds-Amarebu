//: [Next](@next)

import Foundation

// MARK: - PROTOCOLOS -
/* Un Protocolo es la definición de un "contrato" con diferentes
 propiedades y funciones que tienen que implementar las clases que
 conformen el protocolo.

 - Un Protocolo en Swift es similar a las interfaces en otros
 lenguages de programación donde se define la forma en la que se van
 a comunicar diferentes clases.

 - La definición de un protocolo es similar a la de una clase o struct:

     protocol NombreProtocol {
        declaración de propiedades
        declaración de funciones
     }

 - En un protocolo solo se declaran las funciones, la implementación la
 realiza la clase que conforma el protocolo, esto quiere decir que cada
 clase puede implementar de forma personalizada una función de un protocolo.

 - Tantas clases como sea necesario pueden implementar/conformar el mismo
 protocol sin limitaciones más que las que plantee el propio protocolo.

 - Utilizando la palabra mutating delante del nombre de la función definida en el protocolo
 se permite que quien conforma este protocolo pueda modificar la instancia, esto
 se utilizará para Enum o Structs por ejemplo.

    mutating func nombreFunción()
 */

/*
 Declaración protocolo SaiyanProtocol en el que se definen una variable saiyanPower
 y una función convertToSaiyan, las clases que implementen este protocolo deberán
 definir la variable saiyanPower e implementar la función convertToSaiyan.

 En este caso, para declarar una función que sea de implementación opcional en un protocolo
 se utilizar la etiqueta @objc en la declaración del protocolo y @objc optional en la de la
 función, esto hará que no sea obligatorio que la función implemente esta función cuando
 conforme este protocolo.
 */
@objc protocol SaiyanProtocol {
    // Variable que definirá el get y set de la variable
    var power: Float { get set }
    // Variable que definirá solo el get y el set será privado
    var saiyanPower: Float { get }
    // Función de implementación opcional por @objc optional
    @objc optional func convertToSaiyan(power: Float)
}

/*
 Declaración clase Heroe que conforma el protocolo SaiyanProtocol, a diferencia
 de la herencia, una clase puede conformar tantos protocolos como sea necesario.
 */
class Heroe: SaiyanProtocol {
    // Variables del protocolo SaiyanProtocol
    /* Se declara la variable con un get público
     y el set se hace privado con private(set)
     */
    private(set) var saiyanPower: Float
    var power: Float

    // Inicializador o constructor de la clase
    init(power: Float, saiyanPower: Float) {
        self.power = power
        self.saiyanPower = saiyanPower
    }

    // Función del protocolo SaiyanProtocol
    func convertToSaiyan() {
        power = power * saiyanPower
    }
}

// Instancia de un objeto de la clase Heroe
let goku = Heroe(power: 30,
                 saiyanPower: 20)

print("Goku power: \(goku.power)")
goku.convertToSaiyan()
print("Goku Saiyan power: \(goku.power)")



