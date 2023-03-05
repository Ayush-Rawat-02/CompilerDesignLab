%{
#include<stdio.h>
int vow=0, con=0;
%}
%%
[aeiouAEIOU] {vow++;}

[^aeiouAEIOU\n] {con++;}
. ;
%%
int yywrap(){}
int main(){
yylex();
printf("The number of consonant is %d and the number of vowels is %d in the given pattern\n", con, vow);
return 0;
}
