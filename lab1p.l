%{
#include<stdio.h>
int countsp=0,counttab=0,countlines=0,countrest=0;
%}

%%
[ ]	countsp++;
[\t]	counttab++;
[\n]	countlines++;
[^\t \n]	countrest++;
%%

int yywrap()
{
return 1;
}

int main()
{
	printf("Enter sentence:\n");
	yylex();
	printf("No. of spaces:%d\n",countsp);
	printf("No. of tabs:%d\n",counttab);
	printf("No. of lines:%d\n",countlines);
	printf("No. of rest:%d\n",countrest);
	return 0;
}