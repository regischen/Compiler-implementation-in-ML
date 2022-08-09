%{
#include <ctype.h>
#include <stdio.h>

#define YYSTYPE double
int yylex(void);
void yyerror(const char *);
%}
%token NUMBER

%left '+' '-'
%left '*' '/'
%right UMINUS
%%

lines : lines expr '\n' {printf("%g\n", $2);}
      | lines '\n'
      | /* empty */

expr  : expr '+' expr {$$ = $1 + $3;}
      | expr '-' expr {$$ = $1 - $3;}
      | expr '*' expr {$$ = $1 * $3;}
      | expr '/' expr {$$ = $1 / $3;}
      | '(' expr ')'  {$$ = $2;}
      | '-' expr %prec UMINUS {$$ = -$2;}
      | NUMBER
      ;
%%

#include "lex.yy.c"