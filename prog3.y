%{ 
#include<stdio.h>
#include<stdlib.h>
#include "prog3.tab.h"
int yylex(void);
void yyerror();
%} 
  
%token A B C NL
  
%% 
stmt: S NL {printf("Valid string\n"); exit(0);};
S: A S A
   | B S B
   | C     ; 
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