use 5.20.0;

my $i = 380;

my @v = (0);
my $p = 0;

use DDP;
for(1..2017) {
    $p = ( 1 + $p + $i ) % @v;
    if($p) { splice @v, $p, 0, $_; }
    else { push @v, $_; $p = $#v };
}

p @v;
