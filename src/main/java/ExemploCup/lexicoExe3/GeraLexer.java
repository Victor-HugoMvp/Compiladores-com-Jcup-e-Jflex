package ExemploCup.lexicoExe3;

public class GeraLexer {
    public static void main(String[] args) {
        String caminhoArquivo = "src/main/java/ExemploCup/lexicoExe3/lexicoExe3.flex";

        jflex.Main.main(new String[]{ caminhoArquivo });
    }
}

