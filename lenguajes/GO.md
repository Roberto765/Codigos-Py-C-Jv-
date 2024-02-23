## Tipo de dato que maneja el lenguaje:

Go utiliza tanto tipos de datos básicos como tipos de datos compuestos.
Los tipos de datos básicos incluyen enteros, flotantes, booleanos y cadenas. 
Además, Go permite la definición de tipos de datos derivados, como estructuras, 
punteros, slices, mapas, canales, interfaces y funciones.

## La disciplina de tipos:

Go utiliza una disciplina de tipos estática y fuertemente tipada. Los tipos
de datos se verifican en tiempo de compilación, lo que significa que se realizan
varias verificaciones antes de que se ejecute el programa. Una vez que se 
declara un tipo de variable, no puede cambiarse sin una conversión explícita.

## El paradigma del lenguaje utilizado:

Go utiliza un paradigma de programación multiparadigma, pero se destaca 
principalmente por su enfoque en la programación estructurada y concurrente. 
Aunque el enfoque principal es procedimental, Go también admite características
de programación orientada a objetos, como métodos y encapsulamiento, aunque de
manera diferente a lenguajes como Java o C++.

## La estructura que lleva las funciones o métodos:
En Go, las funciones y métodos se definen de manera similar a otros lenguajes,
pero tienen algunas peculiaridades:

Cada paquete puede tener múltiples funciones y métodos.
- 1.-Las funciones y métodos se definen utilizando la palabra clave func.
- 2.-El punto de entrada del programa es la función main().
- 3.-Las funciones pueden tomar cero o más parámetros y devolver cero o más resultados.
- 4.-Las funciones pueden ser declaradas fuera de cualquier estructura o pueden ser métodos de un tipo definido por el usuario.
- 5.-Los métodos se definen asociados a un tipo específico utilizando la sintaxis func (t Tipo) NombreMetodo().
- 6.-Go permite la definición de funciones anónimas (cierres) y funciones recursivas.

## FACTORIAL

package main

import "fmt"

func factorial(n int) int {
    if n == 0 {
        return 1
    }
    return n * factorial(n-1)
}

func main() {
    var num int
    fmt.Print("Ingrese un número para calcular su factorial: ")
    fmt.Scan(&num)
    
    resultado := factorial(num)

    fmt.Printf("El factorial de %d es: %d\n", num, resultado)
}

## FIBONACCI

package main

import "fmt"

func fibonacci(n int) int {
    if n <= 1 {
        return n
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

func main() {
    var num int
    fmt.Print("Ingrese el número de términos de la secuencia de Fibonacci que desea calcular: ")
    fmt.Scan(&num)

    fmt.Println("Secuencia de Fibonacci:")
    for i := 0; i < num; i++ {
        fmt.Printf("%d ", fibonacci(i))
    }
    fmt.Println()
}

## PALINDROMO

package main

import (
    "fmt"
    "strings"
)

func esPalindromo(palabra string) bool {
    palabra = strings.ToLower(strings.ReplaceAll(palabra, " ", ""))
    for i := 0; i < len(palabra)/2; i++ {
        if palabra[i] != palabra[len(palabra)-1-i] {
            return false
        }
    }
    return true
}

func main() {
    var palabra string
    fmt.Print("Ingrese una palabra para verificar si es un palíndromo: ")
    fmt.Scan(&palabra)

    if esPalindromo(palabra) {
        fmt.Printf("%s es un palíndromo.\n", palabra)
    } else {
        fmt.Printf("%s no es un palíndromo.\n", palabra)
    }
}
