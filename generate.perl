use strict;
use warnings;

my @digit = (0..9, 'X', '£');

for my $i (1..$ARGV[0]) {
  my $s = "";
  for (my $n = $i; $n > 0; $n = int($n/12)) {
    $s = $digit[$n%12] . $s;
  }
  print "$i = $s\n";
}
