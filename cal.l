%{
#include<math.h>
#include"y.tab.h"
%}
%%
[0-9]+ {yylval.dval=atoi(yytext); return NUMBER;}
[\t] ;
\n return(0);
. return yytext[0];
%%
