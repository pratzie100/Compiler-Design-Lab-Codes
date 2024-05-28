%{
#include<stdio.h>

%}
REG (a|b)*a(a|b)(a|b)

%%
{REG}	printf("%s is accepted\n",yytext);
.*	printf("%s is not accepted\n",yytext);
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