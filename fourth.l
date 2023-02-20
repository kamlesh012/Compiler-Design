%{
#include <stdio.h>
int validint=0,validfloat=0,invalid=0;
%}

%%
^[+-]?[0-9]*[.][0-9]+$ {validfloat=1;}
^[+-]?[0-9]* {validint=1;}
. {invalid++;}
%%

int yywrap(){return 1;}

int main(){
	yylex();
	if(validint!=0 && !invalid) printf("Integer is Valid\n");
	else if(validfloat!=0 && !invalid) printf("Float is Vaild \n");
	else printf("Not Valid \n");
	return 0;
}

