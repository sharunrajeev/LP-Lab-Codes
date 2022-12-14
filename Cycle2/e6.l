/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

/*lex code to determine whether input is an identifier or not*/
%{
#include <stdio.h>
%}
  
/*rule section */
%%
^[a-z A-Z _][a-z A-Z 0-9 _]* { printf("Valid Identifier"); }
^[^a-z A-Z _] { printf("Invalid Identifier"); }
%%
 
int yywrap() {}
int main()
{
	printf("Enter a string\n");
    yylex();
    return 0;
}

/*
OUTPUT

exam@dslab-Veriton-Series:~/Desktop/20219078_SharunERajeev/Cycle2$ ./a.out 
Enter a string
username
Valid Identifier
123
Invalid Identifier
*/
