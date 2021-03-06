use 5.20.0;

use List::AllUtils qw/ sum /;
use Math::Prime::Util ':all';

my $x  = 3400000;

my $house = 1;

$house++ while( nbr_gifts($house) < $x );

say $house;

sub nbr_gifts {
    my $n = shift;

    sum divisors($n);
}
