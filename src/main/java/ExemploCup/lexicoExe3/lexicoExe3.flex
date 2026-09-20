package ExemploCup.lexicoExe3;

import java_cup.runtime.*;
import ExemploCup.lexicoExe3.Sym;

%%
%cup
%public
%class Lexer
%line
%column

DIGITO = [0-9]
INTEIRO = {DIGITO}+
IGNORE = [\r|\n|\r\n|\t|\s]

%%
<YYINITIAL> {

{INTEIRO} { int aux = Integer.parseInt(yytext());
            return new Symbol(Sym.INTEIRO, yyline, yycolumn, Integer.valueOf(aux));
          }

"+"       { return new Symbol(Sym.MAIS, yyline, yycolumn); }
"-"       { return new Symbol(Sym.MENOS, yyline, yycolumn); }
"*"       { return new Symbol(Sym.MULT, yyline, yycolumn); }
"/"       { return new Symbol(Sym.DIV, yyline, yycolumn); }
";"       { return new Symbol(Sym.PTVIRG, yyline, yycolumn); }
{IGNORE}  { /* Ignores */ }

}
<<EOF>>   { return new Symbol(Sym.EOF); }