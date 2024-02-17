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
