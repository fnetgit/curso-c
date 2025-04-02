#include <stdio.h>
#include <locale.h>

void main() {
    setlocale(LC_ALL, "Portuguese");
    printf("<<< EX001 - Listagem >>>\n\n Listagem de Alunos\n");
    printf(" Nome\t\tNota\n---------------------\n Ana Beatriz\t8.5\n Bianca Martins 9.0\n");
    printf(" Cláudio Sá\t5.5\n Giovana Silva\t7.5\n\n");
}
