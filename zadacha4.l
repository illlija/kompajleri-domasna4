%{
#include <stdio.h>
int wr=0;
%}
%%
[\n] {wr++;}
[\t] {wr++;}
[" "] {wr++;}
[^\n\t] ;
%%
int main()
{
char file[10];
printf("Enter the filename: ");
scanf("%s", file);
yyin=fopen(file, "r");
yylex();
printf("Words=%d\n",wr);
return 0;
}
