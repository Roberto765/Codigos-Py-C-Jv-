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
