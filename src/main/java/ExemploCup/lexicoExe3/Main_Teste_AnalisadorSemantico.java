package ExemploCup.lexicoExe3;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class Main_Teste_AnalisadorSemantico {
    public static void main(String[] args) throws FileNotFoundException {
        String arquivo = "C:/Arquivo/codigofonteExe3.txt";

        System.out.println("Arquivo analisado: " + arquivo);

        BufferedReader texto = new BufferedReader(new FileReader(arquivo));

        Lexer analiseLexica = new Lexer(texto);

        ParserSemantico p = new ParserSemantico(analiseLexica);

        try {
            p.parse();
        } catch (Exception e) {
            System.out.println("Falha geral.");
        }
    }
}
