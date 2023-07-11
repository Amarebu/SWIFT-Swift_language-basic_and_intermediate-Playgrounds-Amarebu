import UIKit

// MARK: - TIPOS OPCIONALES
/* Se pueden definir tipos de datos opcionales o no, esto
 significa que si una variable no está declarada con un
 tipo de dato opcional esa variable nunca podrá tener el
 valor de NIL.

 Que una variable sea de tipo opcional nos indica que cuando
 queramos utilizar u obtener el valor almacenado en esa variable
 puede contener un valor del tipo de dato indicado o no contener
 valor, lo que devolverá un nil.

 Para utilizar variables con tipo de dato opcional es obligatorio
 indicar explícitamente el tipo de dato de la variable en la
 declaración. Si no se asigna un valor inicial, esta variable de
 tipo opcional no tendrá valor, será nil.

 - El operador que indica un tipo de dato opcional es ?

 - Ejemplo declaración: var nombreVariable: TipoDato?
 */
var gokuName: String?
var gohanName: String? = "Gohan"


// MARK: - [NO RECOMENDADO] FORZAR UNWRAPPED/DESEMPAQUETADO [NO RECOMENDADO]
/* Se puede forzar el desempaquetado de un valor de tipo opcional, que, salvo en contadas
 ocasiones, nunca deberíamos utilizar. Los valores de tipo opcional se crearon para evitar
 crashes y errores indeseados en tiempo de ejecucción de nuestro programa o aplicación, si
 forzamos el desempaquetado perderemos esta valiosa funcionalidad.

 - El operador que se utiliza para ello es !

 - Ejemplo: nombreVariableOpcional!.count en este caso devolvería un valor de
 tipo no opcional Int siempre y cuando nombreVariableOpcional no fuera nil, si es nil
 provocaría un error (exception) en tiempo de ejecución.
 */
// var gokuNameCharsCountForced = gokuName!.count

// MARK: - UNWRAPPED/DESEMPAQUETADO SEGURO
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se realiza con el operador ? después del valor de tipo opcional.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo.

 - Ejemplo, para obtener el count de una variable: nombreVariableOpcional?.count
 en este caso devolvería un valor de tipo opcional Int?
 */
var gokuNameCharsCountOptional = gokuName?.count

// MARK: - UNWRAPPED/DESEMPAQUETADO IF LET
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se puede realizar también con una estructura conocida como IF LET.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo y asignarla a otra variable que ya no será de tipo opcional.

 - Ejemplo, para obtener el count de una variable:
    if let variableNombre = variableOpcional?.count  {
        Solo Dentro del if podremos usar la nueva constante variableNombre que ya
        no será de tipo opcional
    }
 */
if let gokuName = gokuName {
    print(gokuName.count)
}

if let gokuNameCount = gokuName?.count {
    print(gokuNameCount)
}

if let gohanName = gohanName {
    print(gohanName.count)
}

if let gohanName = gohanName {
    print(gohanName)
}

if let gohanNameCount = gohanName?.count {
    print(gohanNameCount)
}


// MARK: - UNWRAPPED/DESEMPAQUETADO GUARD LET
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se puede realizar también con una estructura conocida como GUARD LET.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo y asignarla a otra variable que ya no será de tipo opcional.

 - Ejemplo, para obtener el count de una variable:
    guard let variableNombre = variableOpcional?.count else {
        Dentro del guard indica que variableOpcional es nil y
        no continuaremos ejecutando este bloque de código

        return
    }

    En este caso, si no entra al guard indica que variableOpcional no es nil
    y desde este punto se podrá utilizar variableNombre con el valor desempaquetado
    y ya no será de tipo opcional.
 */
/*
 ** SOLO SE PUEDE UTILIZAR DENTRO DE FUNCIONES en playground
 guard let gokuNameCount = gokuName?.count else {
     return
 }

 print(gokuNameCount)
 */


// MARK: - VALOR POR DEFECTO
/* Se puede dar un valor por defecto en caso de que el valor de la variable sea nil,
 de esta manera, si el valor opcional fuera nil se devolvería el valor por defecto.

 - Para ello se utiliza el operador ?? que indica que si la expresión de la izquierda
 del operador es nil devuelve el valor que pongamos a la derecha del operador.

 - Ejemplo: nombreVariableOpcional?.count ?? 0 en este caso devolvería un valor de
 tipo no opcional Int
 */
var gokuNameCharsCount = gokuName?.count ?? 0



