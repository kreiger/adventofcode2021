#!/usr/bin/perl

use v5.32;

use strict;
use warnings;

my $forward = 0;
my $aim = 0;
my $depth = 0;
while (<>) {
    if (/^forward (\d+)/) {
        $forward += $1;
        $depth += $aim * $1;
        die if $depth < 0;
    }
    $aim += $1 if /^down (\d+)/;
    $aim -= $1 if /^up (\d+)/;
}

say $forward;
say $depth;
say $aim;
say $depth * $forward;
