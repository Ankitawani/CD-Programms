Aim:Program for lexical analyzer 
Name:Ankita K.Wani
 BE-B[67]
%{
#include<math.h>
FILE *fp;
%}

Header "#include<"[a-z]+".h>"
main "void main()"
brackets "("|"{"|")"|"}"|"["|"]" 
keywords "printf("|"scanf("|"goto"|"clrscr()"

digit[0-9]+
Plus "+"
Subtract "-"
Multiply "*"
Divide "/"
Equal "="

terminator ");"
datatype [\t]*"int"[\t]*|[\t]*"char"[\t]*|[\t]*"float"[\t]*|[\t]*"long"[\t]*
variable[a-zA-Z][a-zA-Z0-9]*
garbage[0-9][a-zA-Z0-9]*
Loop "if("|"for("|"while("|"do"[\t]*


%%
{Header}	printf("Header file: %s\n",yytext);
{main}		printf("Main function: %s\n",yytext);
{brackets}      printf("Bracket: %s\n",yytext);
{digit}		printf("Number: %s\n",yytext);
{Plus}	        printf("Plus opearator: %s\n",yytext);
{Subtract}	printf("Subtract opearator: %s\n",yytext);
{Multiply}	printf("Multiply opearator: %s\n",yytext);
{Divide}	printf("Divide opearator: %s\n",yytext);
{Equal}   	printf("Equals to: %s\n",yytext);
{datatype}      printf("Datatype: %s\n",yytext);
{garbage}	printf("Garbage: %s\n",yytext);
{keywords}	printf("Lib. fuction: %s\n",yytext);
{variable}	printf("Variable: %s\n",yytext);

{Loop}		printf("Loop: %s\n",yytext);
{terminator}	printf("Terminator: %s\n",yytext);
%%

int main(int argc,char *argv[])
 {
      fp=fopen(argv[1],"r");
       yyin=fp;
       yylex();
}

Output:
student@student-ThinkCentre-M72e:~$ lex pr1.l
student@student-ThinkCentre-M72e:~$ cc lex.yy.c -ll

student@student-ThinkCentre-M72e:~$ ./a.out add1.c
Header file: #include<stdio.h>


Main function: void main()

Bracket: {

  Datatype: int
 Variable: a
,Variable: b
;
Lib. fuction: printf(
"\Variable: nEnter
 Variable: two
 Variable: no
."Terminator: );

Lib. fuction: scanf(
"%Variable: d
%Variable: d
",&Variable: a
,&Variable: b
Terminator: );


Lib. fuction: printf(
"Variable: Addition
Equals to: =
%Variable: d
",Variable: a
Plus opearator: +
Variable: b
Terminator: );

Bracket: }


