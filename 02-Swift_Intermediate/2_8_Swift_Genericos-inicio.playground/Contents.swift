import UIKit

// MARK: - TIPO DATOS GENÉRICOS -
/* El código genérico nos permite escribir funciones y tipos flexibles y
 reutilizables que pueden funcionar con cualquier tipo, sujeto a los
 requisitos que definamos. Podemos escribir código que evite la duplicación y
 exprese nuestra intención de manera clara y abstracta.

 - Los genéricos son una de las características más poderosas de Swift,
 y gran parte de la biblioteca estándar de Swift está construida con código genérico.

 - Por ejemplo, los tipos Array y Dictionary de Swift son colecciones genéricas.
 */

/* Declaración de la función con parámetro de entrada genéricos y retorno
 de un valor del mismo tipo genérico.

 - Normalmente se utiliza T para indicar el tipo de dato genérico, pero se
 podría utilizar cualquier otra letra o nombre.

 - El parámetro de tipo T se sustituirá cuando se llame a la función con un
 tipo de dato concreto.

 - Después del nombre de la función se indican los diferentes tipos de datos
 genéricos, puede haber varios distintos:

    func nombreFunción<T>

 - Es posible obligar a que el tipo de dato que sustituya al valor genérico
 cumpla ciertos requisitos, por ejemplo que conforme un protocolo.

    func nombreFunción<T: NombreProtocolo>
 */
enum FightError: Error {
    case invalidFighters(fightersNeeded: Int)
    case emptyWinner
}

func battle<T>(between fighter: T?, vs fighter2: T?) throws -> T {
    guard let fighter = fighter,
          let fighter2 = fighter2 else {
        // Se propaga/lanza el error
        throw FightError.invalidFighters(fightersNeeded: 2)
    }

    guard let winner = [fighter, fighter2].randomElement() else {
        // Se propaga/lanza el error
        throw FightError.emptyWinner
    }

    // Se retorna de forma normal el valor de la función
    return winner
}

// Es posible llamar a la función con diferentes tipos de datos
try? battle(between: 2, vs: 5)
try? battle(between: "Trunks", vs: "Bu")
