%{
#include<stdio.h>
int a=0, w=0, s=0, l=0;
%}
%%
[a-zA-Z] {a++;}
" " {w++; s++;}
\n {l++; w++;}
%%
int yywrap(){}
int main(){
extern FILE *yyin, *yyout;
yyin = fopen("Input.txt", "r");
yyout = fopen("Output.txt", "w");
yylex();
fprintf(yyout, "The number of alphabet letters in the Input file are : %d\n", a);
fprintf(yyout, "The number of words in the Input file are : %d\n", w);
fprintf(yyout, "The numebr of spaces in the Input file are : %d\n", s);
fprintf(yyout, "The number of lines in the Input file are : %d\n", l);
fclose(yyout);
return 0;
}
