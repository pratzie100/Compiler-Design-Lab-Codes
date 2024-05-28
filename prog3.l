%{ 
#include "prog3.tab.h" 
%} 
  
%% 
[a] {return A;} 
[b] {return B;} 
[c] {return C;}
[\n] {return NL;} 
%% 

int yywrap()  
{  
return 1;  
}  
  
