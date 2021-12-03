#!/usr/bin/perl

use v5.32;

use strict;
use warnings;

use List::Util qw(sum);

my @window = ();
my $prev;
my $inc = 0;
while (<>) {
    push @window, $_;
    next if @window < 3;
    my $sum = sum @window;
    shift @window;

    $inc++ if defined($prev) and $prev < $sum;
    $prev = $sum;
}

say $inc;