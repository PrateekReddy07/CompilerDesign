#include<stdio.h>
#include<string.h>
int main()
{
char line[20];
int s[20],t=1,m=0,i=0;     
printf("Enter string:");
gets(line);
for(i=0;i<20;i++)s[i]=0;
printf("mem\top\ta1\ta2\tres\n");
for(i=1;i<2;i++)
{
printf("\n(%d)\t%c \t%c \t%c \tt%d\n",m,line[i+2],line[i+1],line[i+3],i);
printf("\n(%d)\t%c \tt%d \t%c \tt%d\n",m+1,line[i+4],i,line[i+5],i+1);
printf("\n(%d)\t%c \t%c \tt%d\n",m+2,line[i],line[i-1],i+1);
}
}

o/p
  Enter an infix expression: d=a+b
Three Address Code:
t1 = d = a
t2 = t1  + b
t3 = t2
mem     op      a1      a2      res

0       :=      b                t1
1       +       a       t1       t2
2       :=      t2              d
