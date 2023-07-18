%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *c);
%}

%token ALP NUM
%left '+' '-'
%left '*' '/'

%%
grammer:exp '\n' {printf("\nEXP is valid\n");};
exp:exp'+'exp
	|exp'-'exp
	|exp'*'exp
	|exp'/'exp
	|NUM
	|ALP
	;

%%
int main(){
printf("Enter the Exp-:");
yyparse();
return 0;
}
int yyerror(char *c){
printf("%s",c);
}