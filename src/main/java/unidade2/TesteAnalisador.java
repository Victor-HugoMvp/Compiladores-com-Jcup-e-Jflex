package unidade2;
import java.io.*;

public class TesteAnalisador {
    public static void main(String[] args) throws IOException
    {
        String arquivo = "C:/Arquivo/codigoExe4.txt";
        BufferedReader texto = new BufferedReader(new FileReader(arquivo));
        Lexer analise = new Lexer(texto);

        while(true){
            TokenExe2 objetoToken = analise.yylex();
            if(objetoToken==null)
                break;
        }
    }

}
