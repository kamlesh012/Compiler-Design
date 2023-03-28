//DFA to accept a string that contains even number of zeroes
%{
%}
  
%s A    //Write the name of states other than INITIAL state
  
%%
//current state is enclosed insdie '<>' followed by the input & BEGIN keyword then the next state where we should move, on receving the given input.
<INITIAL>1 BEGIN A;     
<INITIAL>0 BEGIN INITIAL;
<INITIAL>[\n] BEGIN A;{printf("Not Accepted\n");}
  
<A>1 BEGIN A;
<A>0 BEGIN INITIAL;
<A>[^\n] BEGIN A;{printf("Not Accepted\n");}

%%
  
int main()
{
    printf("Enter String\n");
    yylex();      //call yylex();
return 0;
}
