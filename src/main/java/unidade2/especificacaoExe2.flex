package unidade2;
import static unidade2.TokenExe2.*;
%%
%{
private void imprimir(String token, String lexema){
System.out.println(lexema + " -> Classificacao lexica" + token);
}
%}

%class Lexer

%type TokenExe2

letra = [a-zA-Z]
digito = [0-9]
underline = "_"
identificador = {letra} ({letra} | {digito} | {underline})*
inteiro = {digito}+
decimal = {inteiro}"."{inteiro}
const_literal = \" ( \\\" | [^\"]\n\r] )* \"
operadoresAritmeticos = ("+" | "-" | "/" | "*")
operadoresComparacao = ("<>" | "<" | ">" | "<=" | ">=" | ">>" | "<<")
operadoresLogicos == ".OU." | ".E."
simbolosEspeciais = ("[" | "]" | "." | "," | ";" )
chaves = ("{" | "}")
parenteses = ("(" | ")")
palavraReservada = "main"
tipoDeVariavel = "int" | "float"
retornoDeFuncao = "void"
atribuicao = ("=")
palavraChave = "if" | "class" | "while" | "do" | "else"
branco = [\n|\t|\r| ]+
%%

{palavraChave} {imprimir("PALAVRA CHAVE", yytext()); return PALAVRA_RESERVADA}
{chaves} { imprimir("CHAVES", yytext()); return CHAVES; }
{parenteses} { imprimir("PARENTESES", yytext()); return PARENTESES; }
{palavraReservada} {imprimir("PALAVRA RESERVADA", yytext()); return PALAVRA_RESERVADA; }
{tipoDeVariavel} {imprimir("TIPO DE VARIAVEL", yytext()); return TIPO_DE_VARIAVEL; }
{retornoDeFuncao} {imprimir("RETORNO DE FUNCAO", yytext()); return RETORNO_DE_FUNCAO; }
{atribuicao} {imprimir("ATRIBUICAO", yytext()); return ATRIBUICAO; }
{branco}                 { return BRANCO; }
{identificador}          { imprimir("IDENTIFICADOR   ", yytext());  return IDENTIFICADOR; }
{const_literal}          { imprimir("LITERAL         ", yytext());  return CONSTANTE; }
{inteiro}                { imprimir("NUMERO INTEIRO  ", yytext());  return INTEIRO; }
{decimal}                { imprimir("NUMERO DECIMAL  ", yytext());  return DECIMAL; }
{operadoresAritmeticos}  { imprimir("OPERADOR ARITMETICO  ", yytext());
                           return OPERADORARITMETICO; }
{operadoresComparacao}   { imprimir("OPERADOR COMPARATIVO  ", yytext());
                           return OPERADORCOMPARATIVO; }
{operadoresLogicos}      { imprimir("OPERADOR LOGICOS     ", yytext());
                           return OPERADORLOGICO; }
{simbolosEspeciais}      { imprimir("SIMBOLOS ESPECIFICO   ", yytext());
                           return SIMBOLOESPECIAL; }
.                        { imprimir ("<<< CARACTER INVALIDO!!! >>>  ",yytext()); return ERROR; }
<<EOF>>                  { return null; }