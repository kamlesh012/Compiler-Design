%{
#include <stdio.h>
int lc=0,tc=0,sc=0,cc=0;
yywrap();
%}

%%
[\n] {lc++;}
[\t] {tc++;}
[ ]  {sc++;}
.    {cc++;}		
%%

int yywrap(){return 1;}

int main(){

yylex();
printf("\nNumber of lines are= %d\n",lc);
printf("\nNumber of tabs are= %d\n",tc);
printf("\nNumber of spaces are= %d\n",sc);
printf("\nNumber of characters are= %d\n",cc);

return 0;

}

