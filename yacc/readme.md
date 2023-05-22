Steps to run a yacc file:
NOTE:
Here filename1 is the name of lex file.
filename2 is the name of yacc file.


lex filename1.l

yacc -d filename2.y

gcc -c lex.yyc y.tab.c

gcc -o a.out lex.yy.o y.tab.o -lfl

./a.out

