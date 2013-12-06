#!/usr/bin/perl

use warnings;
use strict;

$\ = $/;

print "state,action,reward,sprime,aprime";

while (<>) {
  my ($s, $a, $sp, $ap, $r) = ($_ =~ m/state\W+(\d+)\W+action\W+(\d+)\W+sprime\W+(\d+)\W+aprime\W+(\d+)\W+reward\W+(\d+)/);
  print "$s,$a,$r,$ap,$sp" if defined($r);
}