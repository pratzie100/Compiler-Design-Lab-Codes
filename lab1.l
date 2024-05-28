%{
#include<stdio.h>
int countlines=0,countspaces=0,counttab=0,countrest=0;
%}

%%
[\n]	{countlines++;}
[" "]	{countspaces++;}
[\t]	{counttab++;}
[^\t" "\n]	{countrest++;}
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter the Sentence : \n");
	yylex();
	
	printf("Number of Lines are : %d\n",countlines);
	printf("Number of Spaces are : %d\n",countspaces);
	printf("Number of Tabs Characters are : %d\n",counttab);
	printf("Number of Rest Characters are : %d\n",countrest);
	
	return 0;
}