Aim:Program for lexical analyzer for identification of no.
Name:Ankita K.Wani
 BE-B[67]
%{
#include<math.h>
FILE *fp;
%}


binary[0-1]+
octal[0-7]+
dec[0-9]+
hexdec[0-9A-F]*
float[-+]?[0-9]*\.?[0-9]*
expo([-+][0-9]+)?\.[0-9]+([eE][0-9]+)?
%%
{binary}        printf("Binary Number: %s\n",yytext);
{octal}		printf("Octal Number: %s\n",yytext);
{dec}		printf("Decimal Number: %s\n",yytext);
{hexdec}	printf("Hexadecimal Number: %s\n",yytext);
{float}		printf("Float Number: %s\n",yytext);
{expo}          printf("Exponential Number: %s\n",yytext);
%%

int main(int argc,char *argv[])
 {
      fp=fopen(argv[1],"r");
       yyin=fp;
       yylex();
}

student@student-ThinkCentre-M72e:~$ lex no_id.l
student@student-ThinkCentre-M72e:~$ cc lex.yy.c -ll

student@student-ThinkCentre-M72e:~$ ./a.out id.txt
Binary Number: 011010

Decimal Number: 16788

Octal Number: 65445

Hexadecimal Number: 76DE1A

Float Number: -99.99

 Exponential Number: -132.34E9

