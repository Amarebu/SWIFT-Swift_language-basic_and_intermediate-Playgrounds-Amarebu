import UIKit

// MARK: - FUNCIONES -
/*
 Las funciones son fragmentos de código que realizan una tarea específica.

 - A una función se le da nombre que identifica lo que hace, y este nombre
 se utiliza para "llamar" a la función para que ejecute el código que
 contiene cuando sea necesario.

 - La sintaxis de las funciones permite declararlas desde sin nombres de parámetros
 hasta con nombres y etiquetas de argumentos para cada parámetro.

 - Los parámetros de entrada de la función pueden proporcionar valores predeterminados
 para simplificar las llamadas a funciones y se pueden pasar parámetros de entrada y salida (inout),
 estos modifican una variable pasada una vez que la función ha completado su ejecución.

 - Las funciones también se pueden implementar dentro de otras funciones para encapsular
 una funcionalidad dentro de el ámbito de otra función.

 - Declaración de una función:

    // Sin parámetros de entrada ni de salida
    func nombreFunción() {
        Código a ejecutar cuando se llama a la función
    }

    // Con parámetros de entradas y no de salida
    func nombreFunción(nombreParámetro: TipoDato) {
        Código a ejecutar cuando se llama a la función
    }

    // Con parámetros de entradas y con valor de salida
    func nombreFunción(nombreParámetro: TipoDato) -> TipoDato {
        Código a ejecutar cuando se llama a la función

        return valorRetornoFunción
    }
 */
print("--------------- FUNCIONES ---------------")

// MARK: - FUNCIÓN SIN PARÁMETROS
// Función sin parámetros de entrada ni de salida
func printGokuName() {
    // Código que se ejecutará cuando
    // se invoque/llame a la función
    print("Function printGokuName: Goku")
}

// Invocar/Llamar a la función
printGokuName()

// MARK: - FUNCIÓN CON PARÁMETROS
// Función con un parámetro de entrada
func printCharacter(name: String) {
    // Código que se ejecutará cuando se
    // invoque/llame a la función
    print("Function printCharacter(name): \(name)")
}

// Invocar/Llamar a la función
printCharacter(name: "Goku")

// MARK: - FUNCIÓN CON ALIAS
/*
 Función con dos parámetros de entrada
 */
func printCharacter(_ name: String, power: Float) {
    // Código que se ejecutará cuando se
    // invoque/llame a la función
    print("Function printCharacter(_:power): \(name)")
}

// Invocar/Llamar a la función
printCharacter("Gohan", power: 100)

// MARK: - FUNCIÓN QUE PUEDE ASEMEJARSE AL LENGUAJE NATURAL
/*
 Función con dos parámetros de entrada
 */
func printCharacter(of name: String, power: Float) {
    // Código que se ejecutará cuando se
    // invoque/llame a la función
    print("Function printCharacter(of:power) \(name)")
}

// Invocar/Llamar a la función
printCharacter(of: "Goku", power: 200)

// MARK: - FUNCIÓN CON VALOR POR DEFECTO
/*
 Función con un parámetro de entrada con un valor
 por defecto. Si se llama a la función sin parámetros,
 la función asignará al parámetro de entrada el valor
 por defecto.
 */
func printCharacter(power: Float = 0) {
    // Código que se ejecutará cuando se
    // invoque/llame a la función
    print("Function printCharacterPower: \(power)")
}

// Invocar/Llamar a la función
printCharacter(power: 100)
printCharacter()

// MARK: - FUNCIÓN CON RETORNO DE VALOR
/*
 Función con un parámetro de entrada con un valor
 por defecto. Si se llama a la función sin parámetros,
 la función asignará al parámetro de entrada el valor
 por defecto.
 */
func convertToSaiyan(power: Float = 0) -> Float {
    // Código que se ejecutará cuando se
    // invoque/llame a la función
    let saiyanPower = power * 20

    // Con la instrucción return la función finaliza
    // su ejecución y devuelve el valor indicado que
    // debe ser del mismo TipoDato que el definido en
    // la declaración de la función como TipoDato retorno
    return saiyanPower
}

// Invocar/Llamar a la función
let saiyanPower = convertToSaiyan(power: 100)
print("Function convertToSaiyan return: \(saiyanPower)")
