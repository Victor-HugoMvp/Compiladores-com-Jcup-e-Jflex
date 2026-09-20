package unidade2;
public class GeraLexer {
    public static void main(String[] args) throws Exception {
        String caminhoArquivo = "src/main/java/unidade2/especificacaoExe2.flex";

        jflex.Main.generate(new String[]{ caminhoArquivo });
    }
}