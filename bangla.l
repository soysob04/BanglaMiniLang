%{
#include "bangla.tab.h"
#include <stdlib.h>
%}

%%

"যদি"        { return IF; }
"তারপর"      { return THEN; }
"শেষ"        { return END; }

"যোগ"        { return ADD; }
"বিয়োগ"      { return SUB; }
"গুন"        { return MUL; }
"ভাগ"        { return DIV; }

[0-9]+        { yylval = atoi(yytext); return NUMBER; }

[ \t\r\n]+    ;
.             ;

%%

int yywrap(void) {
    return 1;
}
