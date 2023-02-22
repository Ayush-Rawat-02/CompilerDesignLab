%{
#include<stdio.h>
%}
%%
"<" {printf("<\n");}
">" {printf(">\n");}
"<=" {printf("<=\n");}
">=" {printf(">=\n");}
"==" {printf("==\n");}
"!=" {printf("!=\n");}
. ;
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
