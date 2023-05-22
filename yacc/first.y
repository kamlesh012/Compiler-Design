%{
#include <stdio.h>
int valid=1;
void yyerror(char *s);
%}
%token A B
%%
str: S'\n' {return 0;}
S: A S B
|
;
%%
void yyerror(char *s){
valid=0;
fprintf(stderr,"%s\n",s);
}

int main (){
printf("ENTER THE STRING:\n");
yyparse();
if(valid==1)printf("\nnValid String");
else printf("\nINVLAID STRING");
}
