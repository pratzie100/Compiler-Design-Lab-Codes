%{
#include<stdio.h>
int count=0;
%}

%%
"while"|"if"|"else"|"int"|"float"|"main"|"void"	{count++; printf("\nKeyword:%s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*	{count++; printf("\nIdentifier:%s",yytext);}
"<="|"=="|"="|"++"|"--"|"-"|"*"|"+"|"("|")"|","	{count++; printf("\nOperator:%s",yytext);}
"{"|"}"|";"	{count++; printf("\nSeperator:%s",yytext);}
[0-9]+[.][0-9]+	{count++; printf("\nFloat:%s",yytext);}
[0-9]+	{count++; printf("\nInteger:%s",yytext);}
.	;
%%

int yywrap()
{
    return 1;
}

int main()
{
    extern FILE *yyin;
    yyin=fopen("input.c","r");
    yylex();
    printf("\nTotal Number of Tokens = %d\n",count);
    return 0;
}