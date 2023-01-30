Declaration Section
%{

%}


Rule Section

%%

%%

Subroutine Section

int yywrap(){
  return 0;
}

int main(){
  yylex();
  /*
  Your Program Here
  */
}


/* Steps to compile

1->open the current folder in terminal

2  lex filename.l

3  gcc lex.yy.c

4  ./a.out

5  Provide input & Press (Ctrl+D) to exit.


*/
