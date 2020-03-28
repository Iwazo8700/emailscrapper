%{
#include <stdio.h>
%}

SPECIAL ([^a-zA-Z0-9]{-}[.,\n ])
ALFANUM [a-zA-Z0-9] 

%%
({ALFANUM}[\.\-\_{ALFANUM}]*)?{ALFANUM}+[@]({ALFANUM}[\.\-\_{ALFANUM}]*)?{ALFANUM}+({ALFANUM}{-}[.,\n ]);

({ALFANUM}[\.\-\_{ALFANUM}]*)?{ALFANUM}+[@]({ALFANUM}[\.\-\_{ALFANUM}]*)?{ALFANUM}+ {printf("%s\n", yytext)}




[[:space:]]+ ;
[[:^space:]]+ ;
[.\n]* ;

%%
