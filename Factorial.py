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








