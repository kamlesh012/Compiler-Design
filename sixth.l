%{
#include <stdio.h>
#include <string.h>
%}

%%
^[_a-zA-Z][a-zA-z0-9]*	{
			if(!strcmp(yytext,"for") || !strcmp(yytext,"while") || !strcmp(yytext,"or") ||  !strcmp(yytext,"and"))
			printf("Reserve keyword\n");
			else 
			printf("Valid Identifier\n");
			}
			
^[^a-zA-Z] 		{printf("Invalid identifier\n");}
. ;

%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
