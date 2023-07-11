import UIKit

// MARK: - ENUMERACIONES
/* Un Enum es un tipo de dato que define los posibles
 valores que puede tener. A una variable del tipo de un Enum
 solo se le podrán asígnar uno de los valores definidos en el Enum

 - Declaración Enum: enum NombreEnum: TipoDato {
    case opción1 = Valor (debe ser un valor del TipoDato del Enum)
    case opción2 = Valor
    case opciónN = Valor
 }
 */
enum DragonBallSeries: String {
    case dragonBall = "Dragon Ball"
    case dragonBallZ = "Dragon Ball Z"
    case dragonBallGT = "Dragon Ball GT"
    case dragonBallSuper = "Dragon Ball Super"
}

// Asignar valores a una variable del tipo del Enum
var firstSerie = DragonBallSeries.dragonBall
var bestSerie: DragonBallSeries = .dragonBallZ

// Obtener el valor asociado al case del enum
firstSerie.rawValue
bestSerie.rawValue

/* Un Enum tambien puede tener varios valores asociados
 como si fuera una Tupla de valores. Al crear el enum se
 pasan los valores deseados y al leer el valor del enum
 se obtienen esos valores asociados a cada case.

 - Declaración Enum: enum NombreEnum {
    case opción1(nombreParámetro: TipoDato, nombreParámetro: TipoDato)
    case opción2
    case opciónN(nombreParámetro: TipoDato)
 }
*/
enum SaiyansState {
    case saiyan(power: Float)
    case ozarus(power: Float)
    case kaioken(power: Float)
    case superSaiyan(power: Float)
    case superSaiyanGod(power: Float)
}

// Asignar a variable diferentes valores del tipo del Enum
var gohan: SaiyansState = .superSaiyanGod(power: 100)
var goku: SaiyansState = .superSaiyan(power: 95)
var vegeta: SaiyansState = .superSaiyan(power: 90)
var trunks: SaiyansState = .superSaiyan(power: 80)


// MARK: - SWITCH ENUMERACIONES
/* La mejor forma de trabajar con enumeraciones es utilizando las
 sentencias Switch, de esta forma se puede comprobar de que tipo del
 enumerado es la variable y en caso de tener valores asociados obtenerlos.
 */
switch gohan {
    case .saiyan(let power):
        print("Gohan Saiyan power \(power)")
    case .ozarus(let power):
        print("Gohan Ozarus power \(power)")
    case .kaioken(let power):
        print("Gohan Kaioken power \(power)")
    case .superSaiyan(let power):
        print("Gohan SuperSaiyan power \(power)")
    case .superSaiyanGod(let power):
        print("Gohan SuperSaiyanGod power \(power)")
}
