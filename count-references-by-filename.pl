#!/usr/bin/perl

# Description: Count references by filename
# Input: grep -ir output
# Output: filename and reference count

use strict;
use warnings;

my @words;
my $string;
my $infile = $ARGV[0];
my $prevname = '';
my $refcount = 0;

open (my $fh, "<$infile") || die("Can't open $infile");
while (<$fh>) {
    chomp;
    my @words = split(/:/, $_);
    if ($words[0] eq $prevname) {
        $refcount++;
    }
    else {
        if (!($prevname eq '')) {
          printf("%-150s %10d\n", $prevname, $refcount);
        };
        $prevname = $words[0];
        $refcount = 1;
    };
}
close $fh;

