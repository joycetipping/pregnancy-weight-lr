use strict; use warnings;
use Date::Parse;

open(my $fh, '<', 'weights.csv') || die 'cannot open';
my $weight_list = "";
while (my $line = <$fh>) {
  chomp $line;
  my ($date, $weight) = split(/,/, $line);
  $weight_list .= str2time($date) . ",$weight\n";
}
open(my $nf, '>', 'data.csv') || die 'cannot open';
print $nf $weight_list;
