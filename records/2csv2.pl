#!/usr/bin/perl

use warnings;
use strict;

$\ = $/;

print "state,action,reward,sprime,aprime";

while (<>) {
  my ($s, $a, $r, $sp, $ap) = ($_ =~ m/s a r s' a':(\d+)\s+(\d+)\s+([\d.]+)\s+(\d+)\s+(\d+)/);
  print "$s,$a,$r,$ap,$sp" if defined($r);
}