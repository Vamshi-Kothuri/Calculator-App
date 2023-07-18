%{
#include<stdio.h>
int length;
void fun(int);
%}


%%
[a-zA-Z0-9]+ {length=yyleng;printf("\nthe Length-:%d\n",length);fun(length);}
%%
void fun(int len){
	if(yytext[0]=='A'||yytext[0]=='a'){
		
		if(len==3){
			printf("THE Word of len Three-: %s\n",yytext);
		}
	}
}

int yywrap(){}
void main(){

printf("ENTER THE STRING-:");
yylex();
printf("NO of Words of Length 3 is-:%d",length);
}