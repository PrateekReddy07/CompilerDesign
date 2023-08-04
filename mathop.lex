%{
%}
%%
"+"|"-"|"/"|"||"|"&&"|"*"|"%"|"|"|"&"|"<"|">" printf("mathematical operator");
.+ printf("not a mathematical operator");
%%
int yywrap(void){}
int main()
{
printf("enter:");
yylex();
printf("\n");
return 0;
}
******************************************************************************************************************
Output:
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex mathop.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c
C:\Users\prateek>a
enter : +
mathematical operator
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex mathop.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c

C:\Users\prateek>a
enter : 1
Not a mathematical operator
