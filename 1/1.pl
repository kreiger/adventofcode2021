#!/usr/bin/perl

use v5.32;

use strict;
use warnings;


my $prev;
my $inc = 0;
while (<>) {
    $inc++ if defined($prev) and $_ > $prev;
    $prev = $_;
}

say $inc;