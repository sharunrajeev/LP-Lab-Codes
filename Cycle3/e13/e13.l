/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
#include "y.tab.c"
%}

%%
"if" {return IF;}
[sS][0-9]* {return S;}
"<"|">"|"=="|"<="|">="|"!=" {return RELOP;}
[0-9]+ {return NUMBER;}
[a-z][a-zA-Z0-9_]* {return ID;}
\n {return NL;}
. {return yytext[0];}
%%

int yywrap() {}
