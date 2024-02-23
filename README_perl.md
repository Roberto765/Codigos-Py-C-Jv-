## Tipo de dato que maneja el lenguaje:

Perl es un lenguaje que maneja una variedad de
tipos de datos para definir el valor que puede
ser almacenado en una variable. Estos tipos de
datos incluyen escalares, arrays y hashes. 
Además, Perl permite la creación de tipos de 
datos personalizados mediante referencias y 
la definición de clases a través de módulos.

## La disciplina de tipos:

La disciplina de tipos en Perl es dinámica. 
Esto significa que el tipo de una variable 
puede cambiar durante la ejecución del 
programa. Perl no requiere una declaración
explícita de tipos y realiza conversiones
automáticas según sea necesario. Esto 
proporciona flexibilidad pero también 
requiere una gestión cuidadosa para evitar 
errores.

## El paradigma del lenguaje utilizado:

Perl es un lenguaje que admite varios paradigmas 
de programación, incluyendo programación imperativa,
funcional y orientada a objetos. Sin embargo, su 
paradigma principal es la programación orientada a
objetos (POO), donde se pueden definir clases y 
objetos para organizar y estructurar el código de
manera modular y reutilizable.

## La estructura que lleva las funciones o métodos:

En Perl, las funciones o métodos tienen una estructura similar a la siguiente:
- 1.- __sub__ Es una palabra clave que define una subrutina (funcion) en perl.
- 2.- __nombre__ El nombre que usa la funcion


## FACTORIAL

use strict;
use warnings;

sub factorial {
    my $n = shift;
    if ($n == 0) {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}

sub main {
    print "Ingrese un número para calcular su factorial: ";
    my $numero = <STDIN>;
    chomp($numero);

    my $factorial_perl = factorial($numero);
    print "El factorial de $numero es $factorial_perl\n";
}

main();

## FIBONACCI

use strict;
use warnings;

sub fibonacci {
    my $n = shift;
    if ($n <= 1) {
        return $n;
    } else {
        return fibonacci($n - 1) + fibonacci($n - 2);
    }
}

print "Ingrese el número Fibonacci a generar: ";
my $num_terminos = <STDIN>;
chomp($num_terminos);

print "Secuencia de Fibonacci:\n";
for my $i (0..$num_terminos-1) {
    print fibonacci($i), " ";
}

## PALINDROMO

use strict;
use warnings;

sub es_palindromo {
    my $palabra = shift;
    $palabra =~ s/\s+//g; 
    $palabra = lc($palabra); 
    return $palabra eq reverse($palabra);
}

print "Ingrese una palabra para verificar si es un palíndromo: ";
my $palabra = <STDIN>;
chomp($palabra);

if (es_palindromo($palabra)) {
    print "'$palabra' es un palíndromo.\n";
} else {
    print "'$palabra' no es un palíndromo.\n";
}
