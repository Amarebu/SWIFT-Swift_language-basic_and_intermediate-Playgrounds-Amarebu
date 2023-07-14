import UIKit

// MARK: VARIABLES COMPUTADAS
/* Una variable computada o autocalculada no almacena
 ningún valor. Éstas variables calculan el valor a
 devolver en base a otros parámetros.

 - Las variables computadas se pueden utilizar tanto
 en clases como en structs, enums, etc...

 - Declaración de una variable computada:

    var nombreVariable: TipoDato {
        << Código a ejectuar >>
        return valorDevuelto
    }

 - Por regla general, toda función que no reciba parámetros
 de entrada y devuelva un valor, debería convertirse a variable
 computada. Ejemplo pasar de función a variable computada:

 // Función
 func bootcampId() -> String {
    bootcamp.id
 }

 // Variable Computada
 var bootcampId: String {
    bootcamp.id
 }
 */


// MARK: - OBSERVADORES PROPIEDADES -
/* Swift permite añadir código que será ejecutado cuando una propiedad
 está a punto de cambiar o ha sido cambiada. Por ejemplo, esto se puede
 utilizar para actualizar la interfaz de usuario cuando un valor cambia.

 - Los observadores que se pueden añadir a una variable de una clase o struct:

    - En willSet hay un valor especial llamado newValue que contiene
    el nuevo valor que tendrá la propiedad.

    - En didSet existe un valor llamado oldValue para representar el
    valor anterior a la modificación.
 */


// MARK: - PROPIEDADES LAZY -
/* Con lazy el compilador retrasa la llamada a calcular datos hasta la
 primera vez que realmente necesita el valor.

 - Solo se declarará lazy una variable, nunca se podrá hacer con una constante.

 - El Closure asociado a la propiedad lazy se ejecuta solo si lee esa propiedad. Si
 por alguna razón esa propiedad no se usa, se evitan asignaciones y cálculos innecesarios.

 - Ejmplo uso, no se calcurá el count de heroes hasta que se llame a la
 variable para obtener los datos:

    lazy var fullName: String {
        "\(name) \(lastName) \(lastName2)"
    }
 */


// MARK: - EJEMPLOS -
// Declaración de la clase Developer
struct Developer {
    var id: String?
    var name: String?
    var lastName: String?
    var lastName2: String?
    var email: String?
    var photo: String?
    var heroes: [Heroe] = []

    // MARK: - PROPIEDAD LAZY
    lazy var fullName: String = {
        "\(String(describing: name)) \(String(describing: lastName)) \(String(describing: lastName2))"
    }()

    // MARK: - OBSERVADORES PROPIEDADES
    var bootcamp: Bootcamp? {
        // Observador que se ejecutará automáticamente cuando se asigne
        // un nuevo valor al a propiedad bootcamp justo antes de modificar
        // el valor anterior.
        willSet {
            print("Property bootcamp will set currentValue: \(String(describing: bootcamp)) newValue: \(String(describing: newValue))")
        }

        // Observador que se ejecutará automáticamente cuando se asigne
        // un nuevo valor al a propiedad bootcamp y se haya modificado el valor.
        didSet {
            print("Property bootcamp did set currentValue: \(String(describing: bootcamp)) oldValue: \(String(describing: oldValue))")
        }
    }

    // MARK: - VARIABLES COMPUTADAS
    // Variable computada que devuelve el número de heroes
    var heroesFavoritesCount: Int {
        // Cuando solo hay una línea de código
        // no es necesario utilizar la palabra return
        // para devolver un valor
        heroes.count
    }

    // Variable computada que devuelve el id del bootcamp
    var bootcampId: String? {
        // Cuando solo hay una línea de código
        // no es necesario utilizar la palabra return
        // para devolver un valor
        bootcamp?.id
    }
}

// Declaración de la clase Heroe
struct Heroe {
    var id: String?
    var photo: String?
    var name: String?
    var description: String?
    var isFavorite: Bool?
}

// Declaración de la clase Bootcamp
struct Bootcamp {
   var id: String
   var name: String?
}
