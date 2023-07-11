//: [Previous](@previous)

import Foundation

// MARK: - DELEGACIÓN PROTOCOLOS -
/* La delegación es un patrón de diseño que permite que una clase o estructura
 transfiera/delegue algunas de sus responsabilidades a una instancia de
 otro tipo.

 - Este patrón de diseño se implementa mediante la definición de un protocolo
 que encapsula las responsabilidades delegadas, de modo que se garantiza que
 un tipo que conforme el protocolo (se llama delegado) proporcione la funcionalidad
 que se ha delegado.

 - La delegación se puede utilizar para responder a una acción en particular o para
 recuperar datos de una fuente externa sin necesidad de conocer el tipo de esa fuente.

 - En este patrón de diseño es muy importante tener en cuenta que el delegado en la mayoría
 de los casos no deja de ser más que la referencia a la instancia de otra clase, esto puede
 provocar fallos en la gestión de memoria. Por eso se suelen marcar con weak, esto permite
 no hacer un cíclo de retención de memoria al indicar que esta variable puede perder la
 referencia a la que apunta si es necesario, para ello el protocolo deber heredar de AnyObject.

    protocol ProtocolName: AnyObject {}
    weak var delegate: ProtocolName?
 */


// Declaración protocolo
protocol DragonBallGame {
    var heroe: String { get }
    var villain: String { get }
    func startFight()
}

// Declaración protocolo delegado
protocol DragonBallDelegate: AnyObject {
    func fightDidStart(_ fighter: String, vs fighter2: String)
    func fightDidEnd(_ winner: String)
}

/* Clase que implementa el protocolo DragonBallGame y contiene
 el delegado al que "delega" ciertas funcionalidades
 */
class DragonBallZ: DragonBallGame {
    // Declaración de la variable del tipo del delegado, con
    // weak para evitar ciclos de retención de memoria.
    weak var delegate: DragonBallDelegate?

    var heroe: String {
        "Goku"
    }
    var villain: String {
        "Freezer"
    }

    func startFight() {
        // Se llama al delegado para transferir esta funcionalidad
        delegate?.fightDidStart(heroe, vs: villain)
        // Se obtiene el ganador
        guard let winner = [heroe, villain].randomElement() else { return }
        // Se "notifica" al delegado que finalizó la batalla
        delegate?.fightDidEnd(winner)
    }
}

/* Clase que implementa las funciones que DragonBallZ delega en otra clase
 con el protocolo DragonBallDelegate
 */
class DragonBallFight: DragonBallDelegate {
    func fightDidStart(_ fighter: String, vs fighter2: String) {
        print("Start fight: \(fighter) VS \(fighter2) will be hard!!!")
    }

    func fightDidEnd(_ winner: String) {
        print("The battle was incredible, in the end \(winner) won after an epic ending")
    }
}

// Instancia de la clase DragonBallZ
let dragonBallZ = DragonBallZ()
// Instancia de la clase DragonBallFight
let dragonBallFight = DragonBallFight()
// Se define el delegado de la clase DragonBallZ
dragonBallZ.delegate = dragonBallFight

// Se llama a la función para inciar el combate
dragonBallZ.startFight()

//: [Next](@next)
