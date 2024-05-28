%{ 
#include<stdio.h>
#include<stdlib.h>
#include "prog4.tab.h" 
void yyerror();
int yylex(void);
%} 
  
%token A B NL
  
%% 
stmt: S NL {printf("Valid string\n"); exit(0);};
S: A S B B
   | A B B ; 
%% 
 
void yyerror() 
{ 
printf("invalid string\n");
exit(0);
} 
  
void main() 
{ 
printf("enter the string\n"); 
yyparse();

} 