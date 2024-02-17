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
