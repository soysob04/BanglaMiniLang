%{
#include <stdio.h>
#include <stdlib.h>

/* Forward declarations (old bison safe) */
int yylex(void);
void yyerror(const char *s);
%}

%token IF THEN END
%token ADD SUB MUL DIV
%token NUMBER

%%

program:
    stmt_list
    ;

stmt_list:
      stmt
    | stmt stmt_list
    ;

stmt:
    IF expr THEN NUMBER END
    {
        printf("ফলাফল: %d\n", $2);
    }
    ;

expr:
      NUMBER ADD NUMBER   { $$ = $1 + $3; }
    | NUMBER SUB NUMBER   { $$ = $1 - $3; }
    | NUMBER MUL NUMBER   { $$ = $1 * $3; }
    | NUMBER DIV NUMBER   { $$ = $1 / $3; }
    ;

%%

void yyerror(const char *s) {
    printf("Syntax Error: %s\n", s);
}
