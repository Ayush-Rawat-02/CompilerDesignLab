%{
#include<stdio.h>
#include<string.h>
char* keys[10]={"int", "if", "float", "double", "label", "char", "else", "do", "include", "while"};
int found[10]={0};
int i,f=0;
%}
%%
[^ " "\n]+ {
	for(i=0; i<10; i++){
		if(strcmp(yytext,keys[i])==0) {
			found[i]=1;
			f=1;
		}
	}
}
%%
int yywrap(){}
int main(){
yylex();
if(f==0){
printf("No keyword found in the input\n");
}
else{
printf("The keywords in the input are : ");
for(i=0; i<10; i++)
if(found[i]==1)
	printf("%s\n",keys[i]);
}
return 0;
}
