package ExemploCup.exe2;
import java_cup.runtime.Symbol;
import ExemploCup.exe2.Sym;
%%
%cup
%public
%class Lexer
%line
%column
%{
    private Symbol symbol(int type) { return new Symbol(type, yyline, yycolumn); }
    private Symbol symbol(int type, Object value) { return new Symbol(type, yyline, yycolumn, value); }
%}

DIGITO = [0-9]
LETRA = [a-zA-Z_]
INTEIRO = {DIGITO}+
VARIAVEL = {LETRA}({LETRA}|{DIGITO})*
IGNORE = [\n|\s|\t\r]

%%
<YYINITIAL> {
    "void"          { return new Symbol(Sym.VOID); }
    "main"          { return new Symbol(Sym.MAIN); }
    "int"           { return new Symbol(Sym.TIPO_INTEIRO); }
    "float"         { return new Symbol(Sym.TIPO_FLOAT); }
    "if"            { return new Symbol(Sym.IF); }
    "else"          { return new Symbol(Sym.ELSE); }

    "("             { return new Symbol(Sym.PARENTESE_ESQUERDO); }
    ")"             { return new Symbol(Sym.PARENTESE_DIREITO); }
    "{"             { return new Symbol(Sym.CHAVE_ESQUERDA); }
    "}"             { return new Symbol(Sym.CHAVE_DIREITA); }
    ";"             { return new Symbol(Sym.PTVG); }
    "="             { return new Symbol(Sym.ATRIB); }
    ">"             { return new Symbol(Sym.MAIOR); }
    "*"             { return new Symbol(Sym.MULT); }

    {INTEIRO}       { return new Symbol(Sym.INTEIRO); }
    {VARIAVEL}      { return new Symbol(Sym.VARIAVEL); }
    {IGNORE}        { /* Ignores */ }
}

<<EOF>>             { return new Symbol(Sym.EOF); }
[^]                 { throw new Error("Caractere inválido: "+yytext()+" na linha "+(yyline+1)+", coluna "+(yycolumn+1)); }