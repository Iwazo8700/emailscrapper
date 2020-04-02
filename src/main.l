%{
#include <stdio.h>
%}

ALFANUM [A-Za-z0-9]
VALIDO [A-Za-z0-9\-\_\.]* 


%%


({ALFANUM}?{VALIDO}{ALFANUM}@{ALFANUM}?{VALIDO}{ALFANUM})/[\.] {printf("%s\n", yytext);} 

({ALFANUM}?{VALIDO}{ALFANUM}@{ALFANUM}?{VALIDO}{ALFANUM}) {printf("%s\n", yytext);}




[[:space:]]+ ;
[[:^space:]]+ ;
[.\n]* ;

%%
