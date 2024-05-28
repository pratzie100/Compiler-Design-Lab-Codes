%{
#include<stdio.h>
int tchar=0,tspace=0,tword=0;
%}
%%
" " {tspace++;tword++;}
[\t\n] {tword++;}
[^\n\t] {tchar++;}
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("input.txt","r");
yylex();
printf("Total characters:%d\nTotal Words:%d\nTotal Whitespaces:%d\n",tchar,tword,tspace);
return 0;
}