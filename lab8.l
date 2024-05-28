%{
#include<stdio.h>
%}
REG (a|b)*(aab|baba)(a|b)*
%%
{REG}	{printf("%s is accepted",yytext);}
.*	{printf("%s is not accepted",yytext);}	
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}