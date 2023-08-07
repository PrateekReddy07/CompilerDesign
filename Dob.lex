%{
%}

%%

[0-3][0-9]\/[0-1][0-9]\/[2][0][0-9][0-9] {printf("Valid Date of Birth");}
.+ {printf("Invalid Date of Birth");}

%%

int yywrap()
{}

int main(){
printf("Enter your Date of Birth: ");
yylex();
}

o/p
Microsoft Windows [Version 10.0.22621.1992]
(c) Microsoft Corporation. All rights reserved.

C:\Users\varad>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\varad>flex dob.txt

C:\Users\varad>set path=C:\MinGW\bin

C:\Users\varad>gcc lex.yy.c

C:\Users\varad>a
enter dob :
07-07-2003
its valid
