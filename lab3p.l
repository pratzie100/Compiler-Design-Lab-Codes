%{
#include<stdio.h>
%}

%%
[0-9]+[.][0-9]+	printf("Floating point\n");
[0-9]+	printf("integer\n");
.	;
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