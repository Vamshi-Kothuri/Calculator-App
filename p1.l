%{
#include<stdio.h>
int vowel=0,cons=0;
%}

%%
[aeiouAEIOU]  {vowel++;}
[a-zA-Z] {cons++;}
%%
int yywrap(){}

int main()
{
printf("Enter the String-:");
yylex();
printf("%d\n%d",vowel,cons);
	return 0;
}