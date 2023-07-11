import UIKit

// MARK: - CLASES -
/* Una clase es una definición de un objeto o elemento que se puede
 representar con diferentes propiedades o parámetros.

 - Las clases se crean como tipo de datos por referencia, esto quiere
 decir que una variable del tipo de la clase es como un puntero al espacio
 de memoria de la instancia.

 - Las clases pueden contener tantas propiedades y funciones como sean necesarias.

 - Para acceder tanto a las propiedades como a las funciones de la clase, se hará
 mediante el nombreInstanciaClase.nombrePropiedad.

 - Existen tres modificadores de acceso tanto a las propiedades como a las
 funciones de una clase:

    - Públicas: Valor por defecto, se indica con public
    - Privadas: Se indica con private y no serán accesibles desde fuera de la clase.
 */
print("--------------- CLASSES ---------------")
// Declaración de la clase Heroe
class Heroe {
    // Propiedad privada solo accesible desde la declaración de la propia clase
    private var id: String?
    var photo: String?
    var name: String?
    var description: String?
    var isFavorite: Bool?

    // Inicializador o constructor de la clase, es obligatorio
    // inicializar todas las variables no opcionales o que no
    // tengan un valor por defecto en su declaración.
    init(id: String, photo: String, name: String, description: String, isFavorite: Bool) {
        // Con self se hace referencia a que es una propiedad de la clase, de esta forma
        // se distingue entre una propiedad de la clase y un parámetro de la función.
        self.id = id
        self.photo = photo
        self.name = name
        self.description = description
        self.isFavorite = isFavorite
    }
}

// MARK: - INSTANCIAR CLASES
/* Crear una instancia de la clase Heroe significa reservar un espacio de memoria
 para los datos que se "guarden" en esta instancia.

 - Se podrán crear tantas instancias de una clase como se necesiten, cada una de
 ellas con los mismos o diferentes datos.

 - Para instanciar una clase se utiliza el constructor de la clase conocido como init.

 - Cada elemento definido en la clase se conoce como propiedad de la clase.
*/

let goku = Heroe(
    id: "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
    name: "Goku",
    description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.",
    isFavorite: true
)

/* No es posible acceder a las propiedades privadas de la clase como:
    goku.id
 */

// Acceder a la propiedad pública name de la clase
print("Class heroe name: \(String(describing: goku.name))")
// Modificar una propiedad de la clase
goku.name = "Goku Saiyan"

/* Las clases son tipos por referencia, al asignar una instancia
 "apuntará" al mismo espacio de memoria de la instancia. Al modificar
 una propiedad en la nueva variable esta variable "apuntará" al mismo
 espacio de memoria y sólo existira una instancia de la clase mientras
 no se vuelva a llamar al constructor de la clase
 */
let heroeGoku = goku
heroeGoku.isFavorite = false
// Se comprueba con el valor de las dos variables que se han modificado
// que al modificar el valor de una propiedad se modifica en la otra también.
print("Is Goku favorite: \(String(describing: goku.isFavorite)) and is heroeGoku favorite: \(String(describing: heroeGoku.isFavorite))")

// MARK: - INIT DE CONVENIENCIA
/* Definición de clase con una propiedad no opcional, es
 obligatorio definir un constructor de la clase para dicha
 propiedad.

 - Un inicializador de conveniencia permite crear diferentes
 formas de instanciar la clase con distintos parámetros.
 */
class Bootcamp {
    var id: String
    var name: String?

    // Inicializador por defecto con parámetros no
    // opcionales y sin valores por defectos
    init(id: String) {
        self.id = id
    }

    // Inicializador por conveniencia con los parámetros
    // "obligatorios" y los que se quieran añadir.
    convenience init(id: String, name: String) {
        self.init(id: id)
        self.name = name
    }
}

// Crear instancia utilizando el Inicializador por defecto
let bootcampMobileXIII = Bootcamp(id: "6810EF55-FB96-4FE8-8C2F-8539B2E69E65")
// Crear instancia utilizando el Inicializador por conveniencia
let bootcampMobileXIV = Bootcamp(id: "028D2575-4893-4529-AEEC-6261162316DF",
                                 name: "Bootcamp Mobile XIV")

// MARK: - ESTRUCTURAS / STRUCTS -
print("--------------- STRUCTS ---------------")
/* Una struct es una definición de un objeto o elemento que se puede
 representar con diferentes propiedades o parámetros igual que una clase.

 - Las struct se crean como tipo de datos por valor, esto quiere decir que
 cuando se asigna o se pasa como parámetro en una función una variable del
 tipo de la struct se realiza una copia de los datos y crea un nuevo espacio
 de memoria por lo que la información original no se modificará.

 - Las struct pueden contener tantas propiedades y funciones como sean necesarias.

 - Para acceder tanto a las propiedades como las funciones de la struct, se hará
 mediante el nombreInstanciaStruct.nombrePropiedad.

 - Cuándo crear una Struct? Algunos ejemplos:
    - Cuando se trabaja con multithreads (en varios hilos de ejecución)
    - Cuando la velocidad de procesamiento de datos es importante
    - El propósito principal de un Struct es encapsular valores de datos relativamente simples.
    - Cuando los valores encapsulados se copien en lugar de que se haga referencia a ellos.
    - Una Struct no puede heredar propiedades o funciones de otra Struct existente.
 */

// MARK: - STRUCT VS CLASS -
/* Por lo general, las Structs se utilizan para definir los modelos de datos en un
 proyecto y las Clases para el resto.

 - Las Structs se crean en el Stack (es muy eficiente y rápido), las Clases
 lo hacen en el Heap (añadir o borrar memoria del heap es más costoso y lento).

 - En las Structs todas las propiedades son inmutables.

 - Las Structs no podrán heredar funcionalidades de otras Structs.

 - El uso de Structs es seguro en entornos multihilo ya que nunca se puede modificar
 el valor inicial, siempre se realizan copias de los valores.
 */
// Definición de una Struct Developer
struct Developer {
    var id: String?
    var name: String?
    var lastName: String?
    var lastName2: String?
    var email: String?
    var photo: String?
    var bootcamp: Bootcamp?
    var heroes: [Heroe] = []

    // No es necesario definir un init, al ser una Struct se genera por defecto

    // STRUCT MUTATING: Permite modificar un valor de la Struct
    mutating func update(email: String) {
        self.email = email
    }
}

var developerDavid = Developer(
    id: "FBB0D60E-9A10-4118-8264-3672B86E155E",
    name: "David",
    lastName: "Jardón",
    lastName2: "Peinado",
    email: "david.jardon@dustsummit.com",
    photo: "https://media-exp1.licdn.com/dms/image/C4E03AQG2mgPKHV0rlQ/profile-displayphoto-shrink_200_200/0/1610211633472?e=1657152000&v=beta&t=YLu4HYZBHk8VOQC6bXiXvrfJ0TX0UJmSdFTbWh_qCJQ",
    bootcamp: bootcampMobileXIV,
    heroes: []
)

print("Struct developer: \(developerDavid)")
/* En una Struct no se pueden modificar las propiedades si se trabaja con una
 constante (let) aunque la propiedad esté definida como var. Si la variable
 utilizada fuera una variable (var) en lugar de una constante sí se podría hacer
 la siguiente actualización de valor:

    developerDavid.email = "d.jardon@gmail.com"
 */

// MARK: STRUCT MUTATING
/* En las Structs todo es inmutable por defecto. Para poder modificar una Struct,
 hay que utilizar la palabra mutating delante de la firma de la función que modifica
 un valor de la Structs:

    mutating func update(email: String) {}
 */
developerDavid.update(email: "d.jardon@gmail.com")



