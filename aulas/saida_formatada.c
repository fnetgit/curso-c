// %d ou i  = int
// %f       = float ou double
// %c       = char
// %s       = cadeia de caracteres
// %e       = notação científica (1.23e+02)
// %hd      = short int
// %ld      = long int
// %hu      = unsigned short int
// %u       = unsigned int
// %lu      = unsigned long int
// %lf      = double no scanf (no printf, %f serve para ambos)

// %d e %i funcionam da mesma forma no printf
// No scanf tem essas diferenças:
//  %d: sempre interpreta a entrada como decimal (base 10).
//  %i: interpreta com auto-detecção de base:
//      Se começa com 0x, trata como hexadecimal.
//      Se começa com 0, trata como octal.
//      Senão, trata como decimal.

#include <stdio.h>
#include <locale.h>

void main() {
    setlocale(LC_ALL, "pt_BR.UTF-8");
    printf("O %s tem %d anos de idade\n", "Francisco", 19);
    printf("Seu peso atual é %.2f Kg\n", 52.0); 
    // O número antes do . indica o tamanho mínimo total do campo
    printf("O seu sexo é %c\n", 'M');
}
