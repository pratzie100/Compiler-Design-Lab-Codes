%{ 
#include<stdio.h> 
%} 

%% 
[0-9]+[.][0-9]+	printf("Floating Point Number\n"); 
[0-9]+	printf("Integer Number\n"); 
.	; 
%% 

int yywrap() {
    return 1;
}

int main() 
{ 
	yylex(); 
	return 0;
} 
