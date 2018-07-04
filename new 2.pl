#!usr/bin/perl
use strict;
use warnings;
my @a;
open IN, "<CHG029162.ready.snp.vcf" or die;
while(my $line=<IN>){if ($line=~/chrY/ and $line=~/PASS/){unshift (@a,$line)}};
close IN;
open OUT, ">out" or die;
foreach my $c(@a){
	my @b=split(/:/,$c);
	if ($b[6]>=100){print OUT $c}
}
close OUT;
