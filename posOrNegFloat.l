%{
#include<stdio.h>
int pos=0, neg=0;
%}
%%
[-][0-9]*[.][0-9]+ {neg++;}
[+]?[0-9]*[.][0-9]+ {pos++;}
.* ;
%%
int yywrap(){}
int main(){
yylex();
printf("Number of positive float numbers : %d",pos);
printf("Number of negetive float numbers : %d",neg);
return 0;
}
