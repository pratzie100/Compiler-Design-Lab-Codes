%{
#include<stdio.h>
%}
REG [A-Za-z_][A-Za-z0-9_]*

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