%{
#include <stdio.h>
%}

%%

^[a-zA-Z_][A-Za-z0-9_]* printf("%s is a Valid Identifier \n",yytext); 
^[^A-Za-z_] printf("%s is a Invalid Identifier \n",yytext);
. ;

%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
