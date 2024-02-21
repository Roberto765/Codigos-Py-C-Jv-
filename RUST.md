## Tipo de dato que maneja el lenguaje:
Rust utiliza un sistema de tipos estático y fuertemente tipado.
Ofrece tipos de datos básicos como enteros, flotantes, booleanos
y caracteres. También proporciona tipos de datos compuestos como
tuplas, arrays y slices. Además, permite definir tipos de datos 
derivados mediante estructuras, enums y punteros.

## La disciplina de tipos:
La disciplina de tipos en Rust es estática y fuertemente tipada, 
similar a C. Los tipos de datos se verifican en tiempo de compilación,
lo que garantiza la seguridad y la prevención de errores durante la
ejecución del programa. Una vez que se declara el tipo de una variable,
no puede cambiarse sin una conversión explícita.

## El paradigma del lenguaje utilizado:
Rust se basa en el paradigma de programación funcional y de concurrencia,
pero también se puede utilizar en un estilo de programación imperativa.
Se centra en la seguridad, el rendimiento y la concurrencia, proporcionando
herramientas como la gestión de memoria segura y el sistema de concurrencia
basado en actores.

## La estructura que lleva las funciones o métodos:

En Rust, las funciones y métodos se definen de manera similar a otros lenguajes, pero con algunas diferencias:

- 1.-Las funciones se definen con la palabra clave fn.
- 2.-Los métodos se definen dentro de bloques impl.
- 3.-Los parámetros de las funciones y métodos deben tener sus tipos especificados.
- 4.-Rust sigue un enfoque de "declaraciones antes que expresiones", lo que significa que las funciones y variables deben declararse antes de ser utilizadas.
- 5.-Rust utiliza el módulo std para proporcionar funciones y tipos básicos, incluyendo funciones de entrada y salida estándar.

## FACTORIAL 

fn factorial(n: u64) -> u64 {
    if n == 0 {
        return 1;
    }
    n * factorial(n - 1)
}

fn main() {
    let num: u64 = 5; 
    let resultado = factorial(num);
    println!("El factorial de {} es: {}", num, resultado);
}

## FIBONACCI

fn fibonacci(n: u64) -> u64 {
    if n <= 1 {
        return n;
    }
    fibonacci(n - 1) + fibonacci(n - 2)
}

fn main() {
    let num: u64 = 10; 
    println!("Secuencia de Fibonacci:");
    for i in 0..num {
        print!("{} ", fibonacci(i));
    }
    println!();
}

## PALINDROMO 

fn es_palindromo(palabra: &str) -> bool {
    let palabra = palabra.to_lowercase().replace(" ", "");
    let reversed = palabra.chars().rev().collect::<String>();
    palabra == reversed
}

fn main() {
    let palabra = String::from("anita lava la tina"); 
    if es_palindromo(&palabra) {
        println!("{} es un palíndromo.", palabra);
    } else {
        println!("{} no es un palíndromo.", palabra);
    }
}


