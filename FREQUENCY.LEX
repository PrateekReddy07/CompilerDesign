%{
#include <stdio.h>
int count = 0;
%}

%%

"a" { ++count; }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
   yylex();
   printf("Character 'a' is repeated %d times\n", count);
   return 0;
}

O/P
Output:
C:\Users\varada>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\varada>flex freq.l.txt

C:\Users\varada>set path=C:\MinGW\bin

C:\Users\varada>gcc lex.yy.c

C:\Users\varada>a
enter: The sky is blue, rise is red.
word frequency:is=2
