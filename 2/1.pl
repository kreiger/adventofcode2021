#!/usr/bin/perl

use v5.32;

use strict;
use warnings;

my $forward = 0;
my $depth = 0;
while (<>) {
    $forward += $1 if /^forward (\d+)/;
    $depth += $1 if /^down (\d+)/;
    $depth -= $1 if /^up (\d+)/;
    die if $depth < 0;
}

say $forward;
say $depth;
say $depth * $forward;
