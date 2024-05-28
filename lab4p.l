%{
#include<stdio.h>
int countch=0,countw=0,countsp=0;
%}

%%
[ ]	countsp++;countw++;
[\t\n]	countw++;
[^\t\n]	countch++;
%%

int yywrap()
{
return 1;
}

int main()
{
	extern FILE *yyin;
	yyin=fopen("input.txt","r");
	yylex();
	printf("Count of words:%d\n",countw);
	printf("Count of spaces:%d\n",countsp);
	printf("Count of characters:%d\n",countch);
	return 0;
}