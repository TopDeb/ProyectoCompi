
package AnalizadorLexico;

/**
 *
 * @author TOP
 */
public enum Tokens {
    
    //incluimos todas las palabras como idenficadores para cada token
    //que tenemos en el archivo Lexer.flex 
    PalabraReservada,
    Igual,
    Suma,
    Resta,
    Multiplicacion,
    Division,
    Identificador,
    Numero,
    ERROR,
    Exponente,
    Porcentaje,
    Relacional,
    Logico
}
