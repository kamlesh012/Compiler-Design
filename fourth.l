%{
#include <stdio.h>
%}

%%
^[a-zA-Z_][.]* {	printf("Valid Identifier \n"); }
^[^A-Za-z_] {	printf("Invalid Identifier \n"); }
. ;

%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
