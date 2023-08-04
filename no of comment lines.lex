%{
int c=0;
%}
%%
"//"|"/*"[a-z]+ {c++;printf("\n %s is a comment line \n",yytext);}
.+ {printf("The Given input is not comment line");}
%%
int yywrap(){}
int main()
{
printf("enter : ");
yylex();
printf("\nno of comments:%d",c);
return 0;
}
***************************************************************************************************************
Output:
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex comment.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c

C:\Users\prateek>a
enter : //hello
The Given input is not comment line
no of comments:0
C:\Users\prateek>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\prateek>flex comment.l.txt

C:\Users\prateek>set path=C:\MinGW\bin

C:\Users\prateek>gcc lex.yy.c

C:\Users\prateek>a
enter : /*hello

 /*hello is a comment line

no of comments:1
