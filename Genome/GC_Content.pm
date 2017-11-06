package Genome::GC_Content;

use strict;
use warnings;

sub gc_content {
    my ($DNAin) = @_;
    my $count = 0;

    my $DNAlength = length($DNAin);

    #explode DNA string into an array
    my @bases = split(//,$DNAin);

    #step through the array and count the occurrences of G and C
    for (my $i=0;$i<$DNAlength;$i++){
        if($bases[$i] =~ /[GC]/){
            $count++;
        }
    }

    sleep 1;

    #return percentage of GC bases
    return $count/$DNAlength;
}

1;
