#include<stdio.h>
#include<string.h>
int main()
{
char line[20];
int s[20],t=1,m=0,i=0;    
printf("Enter string:");
gets(line);
for(i=0;i<20;i++)s[i]=0;
printf("mem\top\ta1\ta2\n");
for(i=1;i<2;i++)
{
printf("\n(%d)\t%c \t%c \t%c\n",m,line[i+2],line[i+1],line[i+3]);
printf("\n(%d)\t%c \t(%d) \t%c\n",m+1,line[i+4],m,line[i+5]);
printf("\n(%d)\t%c \t%c \t(%d)\n",m+2,line[i],line[i-1],m+1);
}
}

output
Enter string:a=b*c/d*e
mem     op      a1      a2

(0)     :=      c
(1)     *       b       (0)
(2)     :=      d
(3)     /       (1)     (2)
(4)     :=      e
(5)     *       (3)     (4)
