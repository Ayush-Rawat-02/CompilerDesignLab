%{
#include<stdio.h>
int n;
%}
%%
[0-9]+ {n=atoi(yytext);
if(n%2==0) printf("\nEven\n");
else printf("\nOdd\n");
}
.* {printf("\nWrong input\n");}
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
