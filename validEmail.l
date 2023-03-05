%{
#include<stdio.h>
%}
%%
[a-z][a-z0-9]*"@"[a-z]+"."[a-z]+ {printf("Valid email address\n");}
.* {printf("Invalid email address\n");}
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
