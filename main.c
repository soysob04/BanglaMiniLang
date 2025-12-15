#include <stdio.h>
#include <locale.h>

int yyparse(void);

int main(void) {
    setlocale(LC_ALL, "");

    printf("BanglaMiniLang (Sirajগঞ্জ সংস্করণ) চালু হইছে\n");
    printf("Ctrl+D দিলে প্রোগ্রাম বন্ধ হবে\n\n");

    yyparse();
    return 0;
}
