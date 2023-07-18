%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}

%token NUMBER ALPHA
%left '+' '-'
%left '*' '/'

%%
grammer:expr '\n' {printf("\nENTERED EXP IS VALID\n");exit(0);};
expr:expr'+'expr
	|expr'-'expr
	|expr'*'expr
	|expr'/'expr
	|NUMBER
	|ALPHA
	;
%%

int main(){

printf("Enter the exp-:");
yyparse();
return 0;
}
yyerror(){
printf("Enterd exp is invalid:");
exit(0);
}