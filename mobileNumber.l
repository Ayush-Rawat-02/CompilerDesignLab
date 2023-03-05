%{
#include<stdio.h>
%}
%%
^[9|7][0-9]{9} { printf("Valid mobile number\n");}
.* {printf("Invalid mobile number\n");}
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
