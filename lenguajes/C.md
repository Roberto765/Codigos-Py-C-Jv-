## Tipo de dato que maneja el lenguaje:

Este lenguaje (C) utiliza un tipo de datos para definir
el tipo de valor que se puede almacenar en una variable,
utiliza un tipo de datos basicos como, enteros, flotantes,
y datos sin signos. Tipos de datos derivados como punteros,
arreglos, estructuras,uniones y enumeraciones. Utiliza 
tambien un tipo de datos compuestos que son definidos por
el usuario.

## La disciplina de tipos:

La disciplina de tipos que utiliza el lenguaje C es 
principalmente estatica y fuertemente tipada, esto significa
que los tipos de datps se verifican en tiempo de compilacion,
lo que implica que se realicen varias verificaciones antes de
que se ejecute el programa. Ademas una vez que se declare un
tipo de variable no se puede cambiar.

## El paradigma del lenguaje utilizado:

En el lenguaje C se usa un paradigma ¿__procedimental__ donde
los programas se estructuran en funciones para realizar tareas
especificas, aumnque es posible implementar otros paradigmas,
como la orientacion a objetos, que no son nativos en C.

## La estructura que lleva las funciones o metodos:

Las funciones que tiene este lenguaje (C) son las siguientes:
* 1.-__stdio.h__ Nos proporciona funciones para entrada y salida estándar.
* 2.-__factorial(int n)__ Calcula el factorial del número entero
* 3.-__main()__ Solicita al usuario que ingrese un número.
* 4.-__factorial__ Una palabra clave utilizada para devolver un valor desde la funcion

## FACTORIAL

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

## FIBONACCI

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

## PALINDROMO

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int es_palindromo(char *palabra) {
    char temp[strlen(palabra) + 1];
    int i, j;

    for (i = 0, j = 0; palabra[i] != '\0'; i++) {
        if (!isspace(palabra[i])) {
            temp[j] = tolower(palabra[i]);
            j++;
        }
    }
    temp[j] = '\0';

    int len = strlen(temp);
    for (i = 0; i < len / 2; i++) {
        if (temp[i] != temp[len - i - 1])
            return 0; 
    }
    return 1; 
}

int main() {
    char palabra[100];
    printf("Ingrese una palabra para verificar si es un palíndromo: ");
    fgets(palabra, sizeof(palabra), stdin);

    if (palabra[strlen(palabra) - 1] == '\n')
        palabra[strlen(palabra) - 1] = '\0';

    if (es_palindromo(palabra)) {
        printf("'%s' es un palíndromo.\n", palabra);
    } else {
        printf("'%s' no es un palíndromo.\n", palabra);
    }

    return 0;
}
