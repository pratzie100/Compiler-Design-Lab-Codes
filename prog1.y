%{ 
#include <stdio.h> 
#include <stdlib.h>
#include "prog1.tab.h"
int yylex(void); 
void yyerror(); 
%} 
  
%token NUMBER 
  
%left '+' '-'
  
%left '*' '/' '%'
  
%left '(' ')'
  
%% 

ArithmeticExpression: E { printf("\nResult=%d\n", $1); exit(0); }; 

E: E '+' E {$$ = $1 + $3;}

   | E '-' E {$$ = $1 - $3;} 
  
   | E '*' E {$$ = $1 * $3;} 
 
   | E '/' E {$$ = $1 / $3;} 
  
   | E '%' E {$$ = $1 % $3;} 
  
   | '(' E ')' {$$ = $2;} 
  
   | NUMBER {$$ = $1;} ; 
  
%% 
  
int main() 
{ 
    printf("\nEnter Arithmetic Expression:\n"); 
    yyparse(); 
    return 0;
} 

void yyerror()
{ 
   printf("\nInvalid arithmetic expression\n"); 
   exit(0);
} 