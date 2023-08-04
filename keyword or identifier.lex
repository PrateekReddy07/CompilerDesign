%{
#include <stdio.h>
%}


%%
"int"|"float"|"if"|"else"|"while"|"do while"|"printf"|"scanf"|"return"    { printf("Keyword: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*                 { printf("Identifier: %s\n", yytext); }
[ \t\n]                             ;
.                                   ; 
%%

int yywrap(){}

int main() {
    yylex();
    return 0;
}

o/p
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex iden.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c

C:\Users\prateek>a

enter : ad56

identifier
