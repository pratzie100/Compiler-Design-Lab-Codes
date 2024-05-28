%{
#include<stdio.h>
%}

%%
"<"[^>]*">"	{fprintf(yyout,"%s",yytext);}
.	;
%%

int yywrap()
{
    return 1;
}

int main()
{
    extern FILE *yyin,*yyout;

    yyin=fopen("read.html","r");
    yyout=fopen("output.txt","w");

    yylex();

    return 0;
}