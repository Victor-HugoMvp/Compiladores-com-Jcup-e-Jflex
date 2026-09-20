package ExemploCup.exe2;
import java.io.*;


public class Main_TesteAnalisador {

    public static void main(String[] args) throws FileNotFoundException {
        String arquivo = "C:/Arquivo/codigofonteExe2.txt";

        System.out.println("Arquivo analisado: " + arquivo);

        BufferedReader texto = new BufferedReader(new FileReader(arquivo));

        // Corrigido 'ExemploCUP' para 'ExemploCup'
        Lexer AnaliseLexica = new Lexer(texto);

        // Nome da classe gerada pelo .bat é ParserSintatico
        ParserSintatico p = new ParserSintatico(AnaliseLexica);

        try {
            p.parse();
            System.out.println("Análise sintática concluída com sucesso!");
        }
        catch (Exception e) {
            System.out.println("Falha geral: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
