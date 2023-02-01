%{
#include<stdio.h>
int words=1, lines=1, characters=0, num=0, spChars=0; 
%}
%%
[a-zA-Z] {characters++;}
" " {words++;}
[0-9] {num++;}
. {spChars++;}
\n {lines++; words++;}
%%
int yywrap(){}
int main(){
yylex();
printf("\n");
printf("Number of characters : %d\n", characters);
printf("Number of words : %d\n", words);
printf("Number of numerics : %d\n", num);
printf("Number of special characters : %d\n", spChars);
printf("Number of lines : %d\n", lines);
return 0;
}
