%{ 
#include<stdio.h>
#include<stdlib.h>
#include "prog5.tab.h"
int yylex(void);
void yyerror();
%} 
  
%token NUMBER 
  
%left '+' '-'
  
%left '*' '/' '%'
  
%left '(' ')'
  
%%
ArithmeticExpression: E{ printf("\nValid arithmetic expression\n"); exit(0); }; 

E: E'+'E {$$=$1+$3;}

  |E'-'E {$$=$1-$3;} 
  
  |E'*'E {$$=$1*$3;} 
 
  |E'/'E {$$=$1/$3;} 
  
  |E'%'E {$$=$1%$3;} 
  
  |'('E')' {$$=$2;} 
  
  | NUMBER {$$=$1;}   ; 
  
%% 
  
void main() 
{ 
printf("\nEnter Arithmetic Expression:\n"); 
yyparse(); 
} 
  
void yyerror() 
{ 
   printf("\nInvalid arithmetic expression\n"); 
   exit(0); 
} 