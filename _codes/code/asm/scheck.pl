#!/usr/bin/perl

use Getopt::Std;

$progdir = ".";
$progname = "scheck";
$wsize = 32;
$count = 10;

getopts('hw:n:');

if ($opt_h) {
  print STDOUT "Usage $0 [-h] [-w wsize] [-n count]\n";
  print STDOUT "     -h         Print this message\n";
  print STDOUT "     -n cnt     Run cnt samples\n";
  print STDOUT "     -w wsize   Use wsize-bit code\n";
}

if ($opt_n) {
    $count = $opt_n;
}

if ($opt_w) {
    $wsize = $opt_w;
}

$prog = $progdir . "/" . $progname . "." . $wsize;

# print "Program '$prog'\n";

$lower = 0;
$upper = -1;
$max = 0;
$min = 0;


for ($i = 0; $i < $count; $i = $i+1) {
    $str = `$prog`;
    chomp $str;
#    print "Got string '$str'\n";
    $str =~ "0x([0-9a-fA-F]+)";
    $val = hex($1);
    if ($i == 0) {
	$max = $val;
	$min = $val;
    }
    if ($val > $max) {
	$max = $val;
    }
    if ($val < $min) {
	$min = $val;
    }
    $lower = $lower | $val;
    $upper = $upper & $val;
#    print "Got val = '$val' from '$str'\n";
}

print "Word Size = $wsize.  Samples = $count\n";
printf("Min = 0x%x, Max = 0x%x, Diff = 0x%x (%d)\n",
       $min, $max, $max - $min, $max - $min);
printf("Lower = 0x%x, Upper = 0x%x, Changes = 0x%x\n",
       $lower, $upper, $lower ^ $upper);
