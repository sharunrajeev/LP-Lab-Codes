/*
Code by 
20219078
Sharun E Rajeev
CSB
*/


%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL
%%
stmt: S NL {printf("Valid String \n");
            exit(0); }
;
S: A S B |
;
%%

int yyerror(char *msg)
{
	printf("Invalid String \n");
	exit(0);
}
main()
{
	printf("Enter the string: ");
	yyparse();
}

