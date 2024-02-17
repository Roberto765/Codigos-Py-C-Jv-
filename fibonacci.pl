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
