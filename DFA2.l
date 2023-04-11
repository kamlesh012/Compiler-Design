//LEX PROGRAM FOR A DFA THAT ACCEPTS A STRING CONTAINING EVEN NUMBER OF ZEROES AND ODD NUMBER OF ONES.
%{
#include <stdio.h>
%}
%s A B C
%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN C;
<INITIAL>\n BEGIN INITIAL;{printf("Not Accepted\n");}

<A>1 BEGIN B;
<A>0 BEGIN INITIAL;
<A>\n BEGIN INITIAL;{printf("Not Accepted\n");}

<B>1 BEGIN A;
<B>0 BEGIN C;
<B>\n BEGIN INITIAL;{printf("Not Accepted\n");}

<C>1 BEGIN INITIAL;
<C>0 BEGIN B;
<C>\n BEGIN INITIAL;{printf("Accepted\n");}

%%
int yywrap(){return 1;}
int main()
{
    printf("Enter String\n");
    yylex();      //call yylex();
	 return 0;
}
