#include <stdio.h>
#define MAI 21

void main() {
    const int PI = 3;
    printf("MAI = %d, PI = %d\n", MAI, PI);
}

// #define é uma diretiva de pré-processamento
// const é uma palavra reservada do C

// Com #define, o valor é substituído antes da compilação

// Com const, a constante existe na memória
// Com const, é possível indicar o tipo primitivo da constante