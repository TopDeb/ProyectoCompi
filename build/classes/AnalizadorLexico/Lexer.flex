package AnalizadorLexico;
import static AnalizadorLexico.Tokens.*;


%%


%class Lexer
%type Tokens
letra=[a-zA-Z_]+
digito=[0-9]+
alfanumerico    = {letra}|{digito}
guion_bajo      = [_]
espacios_blanco=[ ,\t,\r,\n]+
%{
    public String lexeme;

%}


%%


int |
if |
else |
set |
puts |
expr |
then |
elseif |
switch |
default |
for |
break |
continue |
while |
proc |
return |



while {lexeme=yytext(); return PalabraReservada;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"#".* {return InicioComentario}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
"**" {return Exponente;}
"%" {return Porcentaje;}
"<" {return Relacional;}
">" {return Relacional;}
"<=" {return Relacional;}
">=" {return Relacional;}
"==" {return Relacional;}
"&&" {return Logico;}
"||" {return Logico;}
"!" {return Logico;}
"{" {return AperturaLlaves;}
"}" {return CerraduraLlaves;}


{letra}({alfanumerico}|{guion_bajo})* {lexeme=yytext(); return Identificador;}
("(-"{digito}+")")|{digito}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}
