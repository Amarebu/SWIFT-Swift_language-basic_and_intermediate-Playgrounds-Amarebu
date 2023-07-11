import UIKit

// MARK: - OPERACIONES & COMPARACIONES -
// MARK: - TIPO OPERACIONES
/* Las diferentes operaciones se pueden realizar tanto
 entre valores como con variables y devuelve el valor
 de realizar la operación correspondiente.
 */
var power: Int = 0
// Suma
power += 20
// Resta
power -= 10
// Multiplicación
var powerMultiplier = 2
power * powerMultiplier
// División
power / 2
// Obtener el módulo de la división o resto
power % 5

// MARK: - COMPARACIONES VALORES
/* La comparación de valores se puede realizar
 únicamente entre valores del mismo tipo de dato y
 devuelve un valor Bool true si se cumple la condición
 o false si no se cumple.
 */
var gokuBattlesWon = 100
var vegetaBattlesWon = 90
// Mayor que
gokuBattlesWon > vegetaBattlesWon
// Menor que
gokuBattlesWon < vegetaBattlesWon
// Mayor igual que
gokuBattlesWon >= vegetaBattlesWon
// Menor igual que
gokuBattlesWon <= vegetaBattlesWon

// MARK: - OPERADOR RANDOM
/* Gracias a random podemos generar números aleatorios dentro
 de un rango de valores predeterminados, incluso acceder a índices
 y posiciones de un string de forma aleatoria.

 - Uso: Int.random(in: RANGO_INICIO..<RANGO_FIN)
 */
let brolyPower = Int.random(in: 50..<100)


// MARK: - OPERADORES LÓGICOS
/* Los operadores lógicos nos permiten hacer comparaciones
 compuestas de varios valores de tipo Bool. las comparaciones
 se pueden realizar con el número de parámetros que se necesiten,
 mínimo dos y máximo n.

 - Existen 4 operadores lógicos dependiendo el tipo de comprobación
 que necesitemos realizar.
    - AND       -> &&
    - OR        -> ||
    - EQUAL     -> ==
    - NOT EQUAL -> !=
 */
// MARK: - AND &&
/* El operador AND únicamente devuelve true cuando todas las comparaciones
 que se realizan son true:

 - true  && true  -> true
 - false && true  -> false
 - true  && false -> false
 - false && false -> false
 */
var isGokuGOAT = false
var isGohanGOAT = true
var isVegetaGOAT = false
var areAllGOAT = isGokuGOAT && isGohanGOAT && isVegetaGOAT

// MARK: - OR ||
/* El operador OR únicamente devuelve false cuando todas las comparaciones
 que se realizan son false:

 - true  || true  -> true
 - false || true  -> true
 - true  || false -> true
 - false || false -> false
 */
var isGokuBetterVegeta = false
var isGohanBetterVegeta = true
var areSomeBetter = isGokuBetterVegeta || isGohanBetterVegeta

// MARK: - EQUAL ==
/* El operador EQUAL devuelve true cuando las comparaciones
 que se realizan tienen el mismo valor:

 - true  || true  -> true
 - false || true  -> false
 - true  || false -> false
 - false || false -> true
 */
var gokuPower = 95
var vegetaPower = 90
gokuPower == vegetaPower

// MARK: - NOT EQUAL !=
/* El operador NOT EQUAL devuelve true cuando las comparaciones
 que se realizan tienen distinto valor:

 - true  || true  -> false
 - false || true  -> true
 - true  || false -> true
 - false || false -> false
 */
var gohanPower = 100
var trunksPower = 80
gohanPower != trunksPower

// MARK: - NEGACIÓN !
/* El operador NEGACIÓN devuelve el valor contrario
 al que se está aplicando

 - !true  -> false
 - !false -> true
 */
var isGohanGokuSon = true
!isGohanGokuSon


// MARK: - INTERPOLACIÓN STRINGS
// MARK: - CON VARIABLES
/*  Para añadir valores, almacenados en una variable, a
 un String se utiliza la interpolación de Strings, esto
 obtiene el valor de la variable y lo añade al string.

 - Uso: "Mi string \(MI_VARIABLE)"
 */
let dragonBallCreator = "Akira Toriyama"
var dragonBallDate: Int = 1984
let dragonBallCharactersCount = 400

let dragonBallDescription = "The Dragon Ball anime series was created by \(dragonBallCreator) on \(dragonBallDate) and has more than \(dragonBallCharactersCount) characters"

// MARK: - CON ARGUMENTOS
/* Para añadir valores a un String se puede elegir por el uso
 de los Strings con formato, en este caso se definen ciertas posiciones
 en el String que serán sustituidas con el valor de los argumentos que
 le pasamos.

 - Posibles argumentos en un String:
    %d  - Int value
    %f  - Float value
    %ld - Long value
    %@  - String value
 */
let dragonBallDescriptionFormat =
String(format: "The Dragon Ball anime series was created by %@ on %d and has more than %d characters",
       dragonBallCreator,
       dragonBallDate,
       dragonBallCharactersCount
)
