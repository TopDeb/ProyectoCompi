
package AnalizadorLexico;

import java.io.File;

/**
 *
 * @author TOP
 */
public class Analizador {
    public static void main(String[] args) {
        
        //la ruta donde esta nuestro archivo Lexer.flex
        String path ="C:/Users/TOP/OneDrive/Documentos/NetBeansProjects/ProyectoCompi/src/AnalizadorLexico/Lexer.flex";
        generarLexer(path);
    }
    //creamos el analizador lexico
    public static void generarLexer(String path){
        
        //llamanos al archivo Lexer.flex
        File archivo = new File(path);
        JFlex.Main.generate(archivo);
    }
}
