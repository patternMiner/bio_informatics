package Genome::RevComp;

use strict;
use warnings;

sub revcomp {
    my($DNAin) = @_;
    my $DNAout = reverse($DNAin);
    $DNAout =~ tr/ACGT/TGCA/;

    sleep 4;

    return $DNAout;
}

1;

