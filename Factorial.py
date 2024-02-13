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

    #No hay uso de clases ni objetos
    #Se adhiere al paradigma de la programación estructurada.

    # Este paradigma se centra en dividir el programa en 
    #funciones lógicas y secuenciales, donde cada función realiza una tarea específica.

    #Se considera debilmente equipado debido a su simplicidad

    #Es considerado un multiparadigma debido a qe puedes emplear varios
    #Estilos de progrmacion

    #Utiliza un tipo de datos integrados






