#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
int n,i,j;
char a[50][50];
printf("enter the no.of intermediate code:");
scanf("%d",&n);
for(i=0;i<n;i++)
{
printf("enter the 3 address code:%d:",i+1);
for(j=0;j<6;j++)
{
scanf("%c",&a[i][j]);
}
}
printf("the generated code is:");
for(i=0;i<n;i++)
{
printf("\n mov %c,R%d",a[i][3],i);
if(a[i][4]=='-')
{
printf("\n sub %c,R%d",a[i][5],i);
}
if(a[i][4]=='+')
{
printf("\n add %c,R%d",a[i][5],i);
}
if(a[i][4]=='*')
{
printf("\n mul %c,R%d",a[i][5],i);
}
if(a[i][4]=='/')
{
printf("\n div %c,R%d",a[i][5],i);
}
printf("\n mov R%d,%c",i,a[i][1]);
printf("\n");
}
return 0;
}


o/p
 Enter the set of intermediate code (terminated by exit):
a=a*b
c=f*h
g=a*h
f=Q+W
t=q-j
exit

 target code generation
************************
        Mov a,R0
        MULb,R0
        Mov R0,a
        Mov f,R1
        MULh,R1
        Mov R1,c
        Mov a,R2
        MULh,R2
        Mov R2,g
        Mov Q,R3
        ADDW,R3
        Mov R3,f
        Mov q,R4
        SUBj,R4
        Mov R4,t
