import UIKit

// MARK: - COLECCIONES DE DATOS -
/* Swift proporciona tres tipos de colecciones de datos, conjuntos y diccionarios,
 para almacenar colecciones de valores.

 - ARRAY son colecciones ordenadas de valores no únicos.
 - DICTIONARY son colecciones desordenadas de asociaciones clave-valor.
 - SET son colecciones desordenadas de valores únicos.
 */

// MARK: - ARRAY
/* Los arrays son colecciones ordenadas de valores que no
tienen porqué ser únicos.

 - Declaración de una matriz: var variableArray: [TipoDato]

 - Los elementos se añaden, salvo que se indique lo contrario,
 al final de la colección.
 */
var charactersArray: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]
// Obtener el número de elementos de la colección
charactersArray.count

// Obtener el elemento de la posición indicada de la colección
charactersArray[2]

// Obtener el primer elemento de la colección
charactersArray.first

// Obtener el último elemento de la colección
charactersArray.last

// Añadir un nuevo elemento al final de la colección
charactersArray.append("Gohan")

// Añadir nuevos elementos al final de la colección
charactersArray.append(contentsOf: ["Trunks", "Piccolo", "Broly"])

// Eliminar el elemento de la posición indicada de la colección
charactersArray.remove(at: 0)
charactersArray

// Eliminar todos los elementos de la colección
charactersArray.removeAll()

// MARK: - DICTIONARY
/* Los diccionarios permiten almacenar un conjunto de datos
 no ordenado con un fomato clave-valor, es decir, cada dato
 almacenado tiene una clave asociada que debe ser única.

 - Las claves pueden ser cualquier tipo de dato primitivo.

 - Los valores pueden ser de cualquier tipo de dato, opcionales o no.

 - Solo se puede almacenar un único tipo de dato, no puede haber valores
 de diferente tipos de datos.

 - Declaración de un diccionario: [claveTipoDato : valorTipoDato]
 */
var charactersDictionary: [Int: String] = [1: "Goku",
                                           2: "Vegeta",
                                           3: "Bu",
                                           4: "Freezer",
                                           5: "Cell"]

// Obtener el valor asociado a la clave indicada del diccionario
charactersDictionary[1]

// Si la clave indicada no existe se crea y se asocia el valor,
// si ya existe se sustituye el valor actual por el nuevo
charactersDictionary[2] = "Gohan"
charactersDictionary[6] = "Trunks"

// Obtener todas las claves del diccionario
charactersDictionary.keys

// Obtener todos los valores del diccionario
charactersDictionary.values

// Comprobar si un diccionario está vacío o no
charactersDictionary.isEmpty

// Actualizar el valor para la clave indicada
charactersDictionary.updateValue("Piccolo", forKey: 4)
charactersDictionary.updateValue("Broly", forKey: 7)
charactersDictionary

// Eliminar el elemento de la clave indicada del diccionario
charactersDictionary.removeValue(forKey: 7)
charactersDictionary

// Eliminar todos los elementos del diccionario
charactersDictionary.removeAll()

// MARK: - SET
/* Los set o conjuntos permiten almacenar un conjunto de datos
 no ordenado y en el que los valores son únicos y todos del mismo
 tipo de dato.

 - Los valores pueden ser de cualquier tipo de dato, opcionales o no.

 - Declaración de un diccionario: Set<tipoDato>
 */
var charactersSet: Set<String> = []
// Insertar valores en el conjunto
charactersSet.insert("Goku")
charactersSet.insert("Vegeta")
charactersSet.insert("Bu")

// Insertar valores en el conjunto y comprobar si se pudo insertar
var setInserted = charactersSet.insert("Goku")
setInserted.inserted
charactersSet

// Obtener la cantidad de elementos del conjunto
charactersSet.count

// Devuelve el elemento que coincida con el indicado
// o nil en caso de que no exista en el conjunto
charactersSet.update(with: "Freezer")
charactersSet
charactersSet.update(with: "Freezer")
charactersSet

// Eliminar todos los elementos del conjunto
charactersSet.removeAll()
