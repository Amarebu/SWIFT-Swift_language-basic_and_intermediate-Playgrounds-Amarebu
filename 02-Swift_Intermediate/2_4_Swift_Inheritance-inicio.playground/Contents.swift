import UIKit

// MARK: - HERENCIA -
/*
 - Una clase puede heredar funcionalidades y propiedades de otra clase

 - Cuando una clase hereda de otra se conoce como subclase

 - La clase de la que hereda se le llama superclase

 - La superclase no sabe qué clases heredan de ella ni sus funcionalidades

 - La superclase o clase padre es accesible mediante la palabra super.propiedadDelPadre

 - Es posible evitar la herencia declarando una clase como final, de esta forma ninguna
 clase podrá heredar de la clase marcada como final.

    final class nombreClase {}
 */

// Declaración de la clase padre con todas las propiedades comunes para las clases hijas
class DragonBallCharacter {
    var id: String?
    var name: String?
    var description: String?
    var photo: String?
    var isFavorite: Bool?

    init(id: String, name: String, description: String, photo: String, isFavorite: Bool) {
        self.id = id
        self.name = name
        self.description = description
        self.photo = photo
        self.isFavorite = isFavorite
    }

    func update(photo: String?) {
        self.photo = photo
    }
}

/* Declaración de la clase Heroe indicando que hereda propiedades y
 funciones públicas de la clase DragonBallCharacter
 */
class Heroe: DragonBallCharacter {
    var power: Float?

    // Inicializador o constructor de la clase, es obligatorio
    // inicializar todas las variables no opcionales o que no
    // tengan un valor por defecto en su declaración.
    init(id: String, name: String, description: String, photo: String, isFavorite: Bool, power: Float) {
        // En la herencia, SUPER hace referencia a la clase padre
        // en este caso al init de la clase DragonBallCharacter
        super.init(id: id,
                   name: name,
                   description: description,
                   photo: photo,
                   isFavorite: isFavorite)
        self.power = power
    }

    func update(isFavorite: Bool) {
        // Modificar el valor de name de la superclase
        super.isFavorite = isFavorite
    }
}

/* Declaración de la clase Villain indicando que hereda propiedades y
 funciones públicas de la clase DragonBallCharacter
 */
class Villain: DragonBallCharacter {
    var evilLevel: Float?

    // Inicializador o constructor de la clase, es obligatorio
    // inicializar todas las variables no opcionales o que no
    // tengan un valor por defecto en su declaración.
    init(id: String, name: String, description: String, photo: String, isFavorite: Bool, evilLevel: Float) {
        // En la herencia, SUPER hace referencia a la clase padre
        // en este caso al init de la clase DragonBallCharacter
        super.init(id: id,
                   name: name,
                   description: description,
                   photo: photo,
                   isFavorite: isFavorite)
        self.evilLevel = evilLevel
    }

    func update(name: String) {
        // Modificar el valor de name de la superclase
        super.name = name
    }
}

/* Se pueden crear instancias de forma normal de cada
 una de las clases hijas con los parámetros necesarios
 en cada caso
 */
let goku = Heroe(
    id: "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
    name: "Goku",
    description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.",
    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
    isFavorite: false,
    power: 98
)
let freezer = Villain(
    id: "D13991A5-6E61-4554-8AA9-D35D0CF3DE58",
    name: "Freez",
    description: "Freezer es el villano más temido del universo Dragon Ball, es la maldad personificada. Es el responsable de la muerte de los padres de Goku, del Rey Vegeta, de los Saiyan del Planeta Vegeta, donde provocó un genocidio. La serie mostró en varias ocasiones su crueldad, ya que disfruta de la muerte y del sufrimiento de sus víctimas. Y no tiene límites. Freezer es la razón por la que Vegeta termina uniéndose a Goku. Tanto Vegeta como Freezer desean la inmortalidad, así que ambos compiten por reunir las bolas de Dragón. Finalmente todos se enfrentan a él. El propio Piccolo es resucitado y trasladado a Namek para enfrentarse al villano. Pronto revelará que tiene varias transformaciones más poderosas, siendo la forma final la más fuerte de todas. Trunks del Futuro consigue matarle, aunque más tarde será revivido para volver a dar guerra en Dragon Ball Super.",
    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/freezer-dragon-ball-bebe-abj.jpg?width=300",
    isFavorite: false,
    evilLevel: 95
)

/* Las propiedades de la clase padre son accesibles
 desde las instancias de clases hijas tanto para
 modificarlas como para obtener su valor
 */
let gokuName = goku.name
let freezerDescription = freezer.description

/* También se pueden actualizar y modificar propiedades
 de la clase padre através de funciones de la clase hija
 */
goku.update(isFavorite: true)
freezer.update(name: "Freezer")

/* Se puede "convertir" de una clase hija a la clase padre pero
 en este proceso se perderían todas las propiedades y funciones
 definidas en la clase hija.

 Por ejemplo de Heroe a DragonBallCharacter
 */
let gokuCharacter = goku as DragonBallCharacter
/* Aquí solo se puede acceder a las propiedades y funciones de
 la clase padre, las propiedades y funciones de la clase hija
 ya se han perdido.
 */
gokuCharacter.name

/* Con un switch o con un if es posible comprobar de que tipo
 de datos es un objeto, en el caso de la herencia puede ser
 algo bastante útil
*/
switch goku {
    case is Heroe: print("Heroe")
    case is Villain: print("Villain")
    case is DragonBallCharacter: print("DragonBallCharacter")
    default: break
}
