%{
#include <stdio.h>
#include <string.h>
%}

%%

[a-zA-Z]+ { printf("Length of word '%s' is: %lu\n", yytext, strlen(yytext));}

%% 
int yywrap(){}

int main(void) {
    yylex();
    return 0;
}

o/p
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex wl.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c

C:\Users\prateek>a
hello word
Length of word 'hello' is: 5
 Length of word 'word' is: 4

hi guys
Length of word 'hi' is: 2
 Length of word 'guys' is: 4
