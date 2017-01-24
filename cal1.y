%{
#include<stdio.h>
%}
%union {
double dval;
int vblno;
}
%token <vblno> NAME
%token <dval> NUMBER
%left '+''-'
%left '*''/'
%nonassoc uniminus
%type <dval> expression


%%
statement:NAME '=' expression {$1=$3;}
| expression {printf("%f",$1);}
;
expression: expression '+' expression {$$=$1+$3;}
| expression '-' expression {$$=$1-$3;}
| expression '*' expression {$$=$1*$3;}
| expression '/' expression {
if($3==0.0)
{
yyerror("divide by zero error");
}
else
{$$=$1/$3;}
}
|'-'expression %prec uniminus {$$=-$2;}
| '('expression')'{$$=$2;}
| NUMBER{$$=$1;}
;
%%

int main()
{
yyparse();
return(0);
}
void yyerror(char *s)
{
printf("%s",s);
}
