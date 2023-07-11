import UIKit

// MARK: - EXTENSIONS -
/* Las extensiones agregan nueva funcionalidad a una Class, Struct,
 Enum o Protocol existente.

 - Esto permite ampliar tipos para los que no tiene acceso al código
 fuente original.

 - Las extensiones son similares a las categorías en Objective-C.

 - Las extensiones pueden:
        - Agregar propiedades calculadas
        - Definir funciones de instancia
        - Proporcionar nuevos inicializadores
        - Hacer que un tipo existente se ajuste a un protocolo

 - Declaración de extensiones:
    extension NombreTipoAExtender {
        < Nuevas funcionalidades >
    }
 */
// Declaración de extensión añadiendo funcionalides a Float
extension Float {
    // Se añade una nueva variable para cualquier tipo de
    // dato que sea Float
    var superSaiyanPower: Float {
        self * 40
    }
}

let gokuPower: Float = 20
// Uso de la función creada en la extensión de Float
gokuPower.superSaiyanPower


/* Declaración extensión que añade nuevas funcionalidades
 a todos los tipos de colecciones de datos.
 */
extension Collection {
    // Variable que permite obtener si la collección no está vacía
    var isNotEmpty: Bool {
        !self.isEmpty
    }

    // Subscript que posibilita obtener de forma segura el elemento
    // de una índice de una colección de datos
    subscript(safe index: Index) -> Iterator.Element? {
        (startIndex..<endIndex).contains(index) ? self[index] : nil
    }
}


// MARK: - PROTOCOLOS + EXTENSIONES
/* La forma más "potente" de usar las extensiones es junto a los protocolos,
 esto permitirá hacer que cualquier clase extienda de un protocolo definido.

 - Esto es imprescindible cuando se trabaja con inyección de dependencias.

 Ejemplo con UIDevice:

 - Definición del protocolo DeviceProviderProtocol con las variables y funciones
 que sean necesarias. Aquí el "truco" es declarar las variables y funciones nuevas
 y las que ya existan en la clase UIDevice que se vayan a necesitar.

 - Extender UIDevice para que implemente el protocolo DeviceProviderProtocol
 */
// Declaración del protocolo DeviceProviderProtocol
protocol DeviceProviderProtocol {
    // Definición de nueva variable
    var identifier: String? { get }

    // Definición de variables ya existentes en la clase UIDevice
    // para poder acceder a ellas mediante el protocolo
    var orientation: UIDeviceOrientation { get }
    var systemVersion: String { get }
}

/* Definición de la extensión a la clase UIDevice para que conforme
 el protocolo DeviceProviderProtocol
 */
extension UIDevice: DeviceProviderProtocol {
    var identifier: String? {
        identifierForVendor?.uuidString
    }
}

// Instancia de la clase UIDevice del tipo del protocolo DeviceProviderProtocol
let deviceProvider: DeviceProviderProtocol = UIDevice.current
// Acceso a las variables y funciones definidas en el protocolo
print("Current device identifier: \(String(describing: deviceProvider.identifier))")
