package ExemploCup.lexicoExe3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileNotFoundException;

public class Main_Teste_AnalisadorSintatico {
    public static void main(String[] args) throws FileNotFoundException {
        String arquivo = "C:/Arquivo/codigofonteExe3.txt";

        System.out.println("Arquivo analisado: " + arquivo);

        BufferedReader texto = new BufferedReader(new FileReader(arquivo));

        // Instanciação direta (sem o prefixo ExemploCUP.)
        Lexer analiseLexica = new Lexer(texto);
        // Em vez de ExemploCUP.lexicoExe3.ParserSintatico p = ...
        ParserSintatico p = new ParserSintatico(analiseLexica);

        try {
            p.parse();
            System.out.println("Análise sintática concluída com sucesso!");
        } catch (Exception e) {
            System.out.println("Falha geral: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
