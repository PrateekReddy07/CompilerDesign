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
