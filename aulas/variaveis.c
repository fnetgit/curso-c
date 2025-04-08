#include <stdio.h>
#include <locale.h>

// Regras:
// Toda variável começa com uma letra;
// Maiúsculas e minúsculas fazem diferença;
// Só usar letras, números e sublinhado;
// Nada de acentos;
// Não pode conter espaços;
// Não pode ter símbolos (só o sublinhado);
// Não pode ser uma palavra reservada.

void main() {
    setlocale(LC_ALL,"pt_BR.UTF-8");
    unsigned int idade = 19;
    float peso = 52.0;
    char sexo = 'M';
    // char nome[] = "Francisco";
    char *nome = "Francisco";

    printf("%s é do sexo %c, tem %i anos e pesa %.1f Kg.\n", nome, sexo, idade, peso);
}