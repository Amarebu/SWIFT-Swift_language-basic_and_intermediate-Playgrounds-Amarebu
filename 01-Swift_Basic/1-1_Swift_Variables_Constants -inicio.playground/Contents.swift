import UIKit

// MARK: - VARIABLES & CONSTANTES -
// MARK: - VARIABLES
/* Definición de una variable

   var nombreVariable: TipoDato

 - Palabra clave que indica que es una variable: var
 - Nombre de la variable: superHeroePower
 - Tipo de dato que va a contener la variable: String
 */
var superHeroePower: String

// MARK: - CONSTANTES
/* Definición de una constante

   let nombreConstante: TipoDato

 - Palabra clave que indica que es una constante: let
 - Nombre de la constante: superHeroeName
 - Tipo de dato que va a contener la constante: String
 */
let superHeroeName: String


// MARK: - TIPOS DE DATOS -
// MARK: - Strings
/* String: Cadenas de texto
 Un tipo de dato String nos permite asignar cadenas
 de texto a una variable o constante de ese tipo.

 - Un String se identifica porque va entre comillas "String"
 */
var dragonBallCreationDate: String = "1984"
let dragonBallWriter: String = "Akira Toriyama"

// MARK: - Int
/* Int: Valores enteros, sin decimales
 Un tipo de dato Int nos permite asignar números
 enteros (no decimales) a una variable o constante de ese tipo.

 - Un Int se identifica porque va sin comillas y es un número
 no decimal positivo o negativo.
 */
var gokuPower: Int = 99

// MARK: - UInt
/* UInt: Valores entero positivo
 Un tipo de dato UInt nos permite asignar números
 positivos (no deciamels) a una variable o constante de ese tipo.

 - Un UInt se identifica porque va sin comillas y es un número
 no decimal positivo.
 */
var vegetaSons: UInt = 2

// MARK: - Float
/* Float: Valores decimales 32 bits
 Un tipo de dato Float nos permite asignar números
 decimales a una variable o constante de ese tipo.

 - Un Float se identifica porque va sin comillas y es un número
 decimal positivo o negativo.
 */
var kamehamehaPower: Float = 3.0000123456789

// MARK: - Double
/* Double: Valores decimales 64 bits
 Un tipo de dato Double nos permite asignar números
 decimales a una variable o constante de ese tipo.
 La diferencia con un Float es la precisión en el número
 de decimales que puede contener, siendo el Double más preciso.

 - Un Double se identifica porque va sin comillas y es un número
 decimal positivo o negativo.
 */
var superSaiyanPower: Double = 9.0000123456789

// MARK: - Bool
/* Bool: Valores booleanos de verdadero o falso
 Un tipo de dato Bool nos permite asignar un valor
 true o false a una variable o constante de ese tipo.

 - Un Bool se identifica porque va sin comillas y solo
 puede valer true o false.
 */
var isCellBestVillain: Bool = true

// MARK: - Tuplas
/* Las tuplas nos permiten agrupar varios valores en un
 único tipo de dato para posteriormente acceder a ellos
 con su posición o con el nombre que le hayamos puesto al valor

 - Declaración de tupla: (nombreParámetro: TipoDato, nombreParámetro: TipoDato)

 */
var superheroe: (id: String, name: String, isFavorite: Bool, description: String, photo: String)
superheroe = ("1", "David", true, "Líder de todos los héroes", "")
// id
superheroe.0
// description
superheroe.3
superheroe.name
superheroe.isFavorite

// MARK: - TIPOS ESPECIALES -
// MARK: - Typealias
/* Con typealias podemos dar un nombre, alias, a un
 tipo de dato ya existente para usar este alias que
 de más contenido y sentido al nombre del tipo de dato.

 - Por ejemplo, en lugar de tener que utilizar la declaración
 de una Tupla siempre que la queramos usar en el proyecto,
 podemos definir un alias para la tupla y a partir de ese momento
 ya podremos utilizar nuestro alias como si fuera un tipo de dato
 nuevo.
 */
typealias Character = (id: String, name: String, isFavorite: Bool, description: String, photo: String)
var superheroe2: Character
// id
superheroe.0
// description
superheroe.3
superheroe.name
superheroe.isFavorite

// MARK: - Auto inferencia de tipos
/* Auto inferir el tipo de datos es una capacidad que
 tiene el lenguaje de Swift y que nos permite que, en la
 mayoría de casos, no sea necesario indicar el tipo de dato
 de una variable o constante en su declaración.

 - Por ejemplo, podemos declarar una variable y asignarle
 un valor incial (inicializar) de tipo String, esto provoca
 que automáticamente la variable sea de tipo String a partir
 de este momento y ya no podrá contener otro tipo de valor
 diferente a String.
 */
var gokuFirstSon = "Son Gohan"


// MARK: - Cast entre tipos
/* Castear un tipo de dato a otro supone hacer que
 un valor de, por ejemplo, tipo String pase a ser
 de tipo Int.

 Si intentas Castear un valor a otro incompatible
 provocará un error que se conoce como Exception.
 */

var ageValue = 20
var gokuAge: String = "\(ageValue)"    // Esto es un cast de int a string
var age = Int(gokuAge)

// Verificar de qué tipo de dato es una variable con is
age is Int
ageValue is Int
gokuAge is String


// -------------------------------------------------
//          Mis variables y mis pruebas
// -------------------------------------------------

var tuplaSegura: (String, Int)
tuplaSegura = ("holi", 12)



