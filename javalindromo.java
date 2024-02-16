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
