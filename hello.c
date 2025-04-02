// No processo de compilação e montagem, o código fonte (C) é transformado em código 
// objeto, que pode ser em assembly, e depois passa pela etapa de montagem para se 
// tornar código de máquina (binário).

#include <stdio.h>

void main() {
    char nome[10];
    printf("Qual é o seu nome? ");
    scanf("%s", nome);
    printf("Muito prazer em te conhecer, %s", nome);
}
