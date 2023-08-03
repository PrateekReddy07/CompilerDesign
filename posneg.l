%{
#include <stdio.h>
int posCount = 0, negCount = 0;
%}

%%

\n      { printf("Positive numbers: %d, Negative numbers: %d\n", posCount, negCount); posCount = 0; negCount = 0; }
-?[0-9]+ { if (atoi(yytext) < 0) ++negCount; else ++posCount; }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}

o/p
C:\Users\Prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\Prateek>flex posneg.l.txt

C:\Users\Prateek>set path=C:\MinGW\bin

C:\Users\Prateek>gcc lex.yy.c

C:\Users\Prateek>a
3 4 -2 6 7
    Positive numbers: 4, Negative numbers: 1
