%{
#include<stdio.h>
int ch=0,lines=0,word=0,tabs=0,spc=0;
%}

%%
[a-zA-Z0-9] {ch++;}
[\n] {lines++;word++;}
[" "] {word++;}
[\t] {tabs++;word++;}
. {spc++;}
%%

int yywrap(){}

void main(){
printf("ENTER A STRING OF CHARS-:");
yylex();
printf("chars:-%d\nlines:-%d\nwords:-%d\ntabs:-%d\nspecialChar:-%d\n",ch,lines,word,tabs,spc);
}