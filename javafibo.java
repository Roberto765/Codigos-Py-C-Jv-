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
