package ExemploCup.exe2;

public class GeraLexer {
    public static void main(String[] args) {
        String caminhoArquivo = "src/main/java/ExemploCup/exe2/lexicoExe2.flex";

        jflex.Main.main(new String[]{ caminhoArquivo });
    }
}
