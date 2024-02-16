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
