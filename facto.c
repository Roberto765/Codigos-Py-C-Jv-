#include <stdio.h>

int factorial(int n) {
    if (n == 0)
        return 1;
    else
        return n * factorial(n - 1);
}

int main() {
    int numero;
    printf("Ingrese un número para calcular su factorial: ");
    scanf("%d", &numero);
    
    int factorial_resultado = factorial(numero);
    printf("El factorial de %d es %d\n", numero, factorial_resultado);

    return 0;
}
