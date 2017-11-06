#!/usr/bin/perl
use strict;
use warnings;

use Genome::GC_Content;
use Genome::RevComp;

# Public domain sample from
# http://steipe.biochemistry.utoronto.ca/abc/index.php/Perl_programming_exercises_1#Exercise_12_-_Putting_it_all_together

# TASK: Find the reverse complement of a gene, its GC content
# and the GC content of its reverse complement.
# The gene is stored in a file called DNA.fasta.

open(IN, "data/DNA.fasta");

#get a gene name
my $name = <IN>;
chomp($name);

#concatenate all lines from fasta file in one string
my $DNA = "";
while(<IN>) { #input goes into $_
    chomp;
    $DNA = $DNA.$_;
}
close(IN);

#call functions to get the reverse complement and GC content
my $DNA_gc   = Genome::GC_Content::gc_content($DNA);
my $DNArc    = Genome::RevComp::revcomp($DNA);
my $DNArc_gc = Genome::GC_Content::gc_content($DNArc);

#print out the results
print "$name has GC content: $DNA_gc\n";
print "reverse complement of $name has GC content: $DNArc_gc\n";

exit();
