%{
%}
%%
[6-9][0-9]{9} {printf("\n mobile number valid");}
.+ {printf("\n mobile number invalid");}
%%
int yywrap(void){}
int main()
{
printf("\n enter number");
yylex();
printf("\n");
return 0;
}

OUTPUT:

C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex mobile.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\praateek>gcc lex.yy.c

C:\Users\prateek>a
enter number:9550345678
mobile number valid
