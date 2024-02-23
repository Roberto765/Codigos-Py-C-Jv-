## Tipo de dato que maneja el lenguaje:

Este lenguaje (Java) utiliza datos para definir el tipo 
de valor que se puede almacenar en una variable, ademas 
de que permite la creacion de datos personalizados 
mediante clases y estructuras de datos definidas por el
usuario.

## La disciplina de tipos:

La disciplina que se usa en este lenguaje (Java) es una
de tipo estatica, en donde el tipo de de cada variable 
se conoce en tiempo de compilacion y se verifica con su
compatibilidad ayudando a prevenir errores antes de ejecutar
el programa.

## El paradigma del lenguaje utilizado:

El paradigma que predomina en java es la programacion 
orientada a objetos __POO__ en donde todo java es un 
objeto y los programas se contruyen a partir de clases 
y objetos que interactuan entre si mediante mensajes. 
Este enfoque permite la reutilizacion de codigo, la 
modularidad y la organizacion estructurada de programas.

## La estructura que lleva las funciones o metodos:

Las funciones que tiene este lenguaje (Java) son las siguientes:
* 1.-__public__ Nos indica que el metodo es accesible desde cualquier otra clase.
* 2.-__static__ Nos indica que el metodo pertenece a la clase misma y no a instancias de la clase
* 3.-__int__ El metodo devuelve un valor entero
* 4.-__factorial__ Una palabra clave utilizada para devolver un valor desde la funcion
* 5.-__return__ Devuelve el resultado de alguna operacion.


## FACTORIAL

import java.util.Scanner;

public class javafacto {
    
    public static int factorial(int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese un número para calcular su factorial: ");
        int numero = leer.nextInt();

        int factorial = factorial(numero);
        System.out.println("El factorial de " + numero + " es " + factorial);
       
    }
}


## FIBONACCI

import java.util.Scanner;

public class javafibo {
    public static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        } else {
            return fibonacci(n - 1) + fibonacci(n - 2);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese el número Fibonacci a generar: ");
        int numTerminos = scanner.nextInt();
        System.out.println("Secuencia de Fibonacci:");
        for (int i = 0; i < numTerminos; i++) {
            System.out.print(fibonacci(i) + " ");
        }
        scanner.close();
    }
}

## PALINDROMO

import java.util.Scanner;

public class javalindromo {
    public static boolean esPalindromo(String palabra) {
        palabra = palabra.toLowerCase().replace(" ", "");
        return palabra.equals(new StringBuilder(palabra).reverse().toString());
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese una palabra para verificar si es un palíndromo: ");
        String palabra = scanner.nextLine();
        if (esPalindromo(palabra)) {
            System.out.println("'" + palabra + "' es un palíndromo.");
        } else {
            System.out.println("'" + palabra + "' no es un palíndromo.");
        }
        scanner.close();
    }
}
