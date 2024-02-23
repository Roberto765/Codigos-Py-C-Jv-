# Codigos-Py-C-Jv-
## Tipo de dato que maneja el lenguaje:

Este lenguaje (Python) maneja varios tipos de datos, principalmente enteros(int), flotantes(float), cadenas de caracteres(srt) y excepciones(ValueError) para el manejo de errores, los cuales se utilizan para interactuar con el usuario, realizar calculos y posibles errores que se den durante su ejecución.

## La disciplina de tipos:
La disciplina que utiliza este lenguaje (Python) es de __Tipado dinámico__ ya que no es necesario declarar el tipo de variable al momento de su creacion.
Tambien es conocido por ser un lenguaje __Fuertemente tipado__ ya que no permite hacer operaciones en tipos de datos incompatibles sin una conversion explicita.Estas caracteristicas lo hacen flexible y seguro, al tiempo que permite un desarrollo rapido y facil ya que no es necesario procuparse por la declaracion y conversion de tipos.

## El paradigma del lenguaje utilizado:
El paradigma que predomina este lenguaje es la __Programacion orientada a objetos__ ya que soporta la definicion de clases y objetos, ademas de conceptos como la herencia el polimorfismo y encapsulamiento.

## La estructura que lleva las funciones o metodos:
Las funciones que tiene este lenguaje (Python) son las siguientes:
* 1.-__def__ Es una palabra utilizada para definir una funcion.
* 2.-__factorial__ Es el nombre de la funcion
* 3.-__(n)__ Lista de parametros que recibe la funcion 
* 4.-__return__ Una palabra clave utilizada para devolver un valor desde la funcion

## FACTORIAL
import math

def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

def main():
    numero = int(input("Ingrese un número para calcular su factorial: "))
    
    factorial_math = math.factorial(numero)
    print("El factorial de", numero, "es", factorial_math)
    
if __name__ == "__main__":
    main()

## FIBONACCI

def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

num_terminos = int(input("Ingrese el número Fibonacci a generar: "))

print("Secuencia de Fibonacci:")
for i in range(num_terminos):
    print(fibonacci(i), end=" ")

## PALINDROMO

def es_palindromo(palabra):
    
    palabra = palabra.lower().replace(" ", "")
    
    return palabra == palabra[::-1]

palabra = input("Ingrese una palabra para verificar si es un palíndromo: ")

if es_palindromo(palabra):
    print(f"'{palabra}' es un palíndromo.")
else:
    print(f"'{palabra}' no es un palíndromo.")
