def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

num_terminos = int(input("Ingrese el número Fibonacci a generar: "))

print("Secuencia de Fibonacci:")
for i in range(num_terminos):
    print(fibonacci(i), end=" ")
