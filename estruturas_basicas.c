#include <stdio.h>
#include <locale.h>

// \n nova linha
// \t tabulação
// \b backspace
// \r retorno
// \\ barra
// \" aspas
// \? interrogação
// \a ou \7 beep
// %% porcentagem

void main() {
    setlocale(LC_ALL, "Portuguese");
    printf("Oi,\nTudo\nBem?\n\n");

    printf("C é\n\"SUPER\"\nFácil!");
}