%{
#include<stdio.h>
float n=0; 
%}
%%
[0-9]* {n=atoi(yytext);
for(int i=0; i<n/2; i++)
if(i*i==n){
printf("\nPerfect square\n");
return 0;
}
printf("\nNot a perfect square\n");
return 0;
}
.* {printf("\nWrong input\n");}
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
