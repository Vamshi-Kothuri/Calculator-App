%{
#include "p8.tab.h"
%}

%%
[a-zA-Z] {return ALP;}
[0-9]+ {return NUM;}
[\t]+ ;
[\n] {return '\n';}
. {return yytext[0];}
%%

int yywrap(){}