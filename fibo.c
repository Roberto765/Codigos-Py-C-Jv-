#include <stdio.h>

int fibonacci(int n) {
    if (n <= 1)
        return n;
    else
        return fibonacci(n - 1) + fibonacci(n - 2);
}

int main() {
    int num_terminos;
    printf("Ingrese el número Fibonacci a generar: ");
    scanf("%d", &num_terminos);

    printf("Secuencia de Fibonacci:\n");
    for (int i = 0; i < num_terminos; i++) {
        printf("%d ", fibonacci(i));
    }
    printf("\n");

    return 0;
}
