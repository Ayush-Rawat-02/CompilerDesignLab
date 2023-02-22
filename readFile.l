%{
#include<stdio.h>
int w=0, a=0, l=0, s=0;
%}
%%
[a-zA-Z] {a++;}
" " {w++; s++;}
\n {w++; l++;}
%%
int yywrap(){}
int main(){
extern FILE *yyin;
yyin = fopen("Input.txt", "r");
yylex();
printf("The number of alphabet letters in the file are : %d\n", a);
printf("The number of words in the file are : %d\n", w);
printf("The number of lines in the file are : %d\n", l);
printf("The number of spaces in the file are : %d\n", s);
return 0;
}
