use strict;
use warnings;

use FindBin qw($Bin);

use Test::More tests => 2;

use Genome::GC_Content;

my $dna_file = "$FindBin::Bin/test_data/DNA.fasta";

open(FH, $dna_file) or die "Can't open $dna_file: $!";

my $name = <FH>;
chomp($name);

my $DNA = "";
while(<FH>) {
    chomp;
    $DNA = $DNA.$_;
}
close(FH);

my $DNA_gc = Genome::GC_Content::gc_content($DNA);

sleep 5;

is($name, ">HSBGPG Human gene for bone gla protein (BGP)");
is($DNA_gc, "0.635255889520715");


1;
