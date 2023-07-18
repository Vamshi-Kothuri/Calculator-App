/* to check if the given expression is valid or not */
%{
#include "y.tab.h"
%}

%%
[a-zA-Z] {return ALPHA;}
[0-9]+ {return NUMBER;}
[\t]+ ;
[\n] {return '\n';}
. {return yytext[0];}
%%