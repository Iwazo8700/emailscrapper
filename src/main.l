
%{
#include <stdio.h>
%}

DIGITO [0-9]
LETRA [A-Za-z]
PONTOS [\-\_\.]
ALFANUM [{LETRA}{DIGITO}]
VALIDO [{PONTOS}{LETRA}{DIGITO}]*

%%

([{ALFANUM}][{VALIDO}][{ALFANUM}]*[@][{ALFANUM}][{VALIDO}][{ALFANUM}*]) {printf("%s\n", yytext);}

%%

int main() {
  yylex();
  return 0;
}
