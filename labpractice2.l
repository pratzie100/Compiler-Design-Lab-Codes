%{
#include <stdio.h>
%}

%s A B C D

%%
<INITIAL>1    BEGIN A;
<INITIAL>0    BEGIN C;
<INITIAL>\n	{ printf("\nENTER VALID INPUT\n"); BEGIN INITIAL; }
<INITIAL>.    BEGIN D;

<A>1         BEGIN B;
<A>0         BEGIN C;
<A>\n        { printf("\nNOT ACCEPTED\n\n"); BEGIN INITIAL; }
<A>.    BEGIN D;

<B>0         BEGIN B;
<B>1         BEGIN B;
<B>\n        { printf("\nACCEPTED\n"); BEGIN INITIAL; }
<B>.    BEGIN D;

<C>0         BEGIN C;
<C>1         BEGIN C;
<C>\n        { printf("\nNOT ACCEPTED\n"); BEGIN INITIAL; }
<C>.    BEGIN D;

<D>.    BEGIN D;
<D>\n        { printf("\nENTER VALID INPUT\n"); BEGIN INITIAL; }

%%

int yywrap()
{
    return 1;
}

int main() {
    printf("Enter the string of '0' and '1' only: \n");
    yylex();
    return 0;
}

