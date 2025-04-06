#include <stdio.h>
#include <locale.h>

void main() {
    setlocale(LC_ALL, "Portuguese");
    printf("<<< EX002 - Especiais >>>\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n");
    printf(" \\a\t=\tBeep\n \\n\t=\tNova linha\n \\t\t=\tTabulação\n \\\t=\tBarra\n ");
    printf("%%%%\t=\tPorcentagem\n \\?\t=\tInterrogação\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n");
}