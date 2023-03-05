%{
#include<stdio.h>
int pos=0,neg=0;
%}
%%
[-][0-9]+ {neg++;}
[+]?[0-9]+ {pos++;}
.* {
printf("Wrong input\n");
return 0;
}
%%
int yywrap(){}
int main(){
yylex();
printf("Number of positive numbers : %d\n",pos);
printf("Number of negetive numbers : %d\n",neg);
return 0;
}
