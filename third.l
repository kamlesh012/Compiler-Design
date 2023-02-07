%{
#include <stdio.h>
char replace_with []="Best";
char replace[]="Science";
%}

%%
[a-zA-Z]+ {
printf("%s \n",yytext);
if(strcmp(yytext,replace)==0){fprintf(yyout,"%s",replace_with);
			
			}
			else {fprintf(yyout,"%s",yytext);}
		}
		
[.] 	{fprintf(yyout,"%s",yytext);}	
%%

int yywrap(){
return 1;
}
int main(){
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
