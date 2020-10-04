#!/usr/bin/perl

use Getopt::Std;

# Generate table of profile results from runs
# Source file of the name <CORPUS>run-<NGRAM>-<NUM>.txt
# Where <CORPUS> encodes name of corpus, <NGRAM> is n-gram size, and <NUM> is 1-7.
# Want to measure time spent
# sorting: sort_words
# lower case: lower1 or lower2
# Hash function: h_xor or h_add
# Walking linked list: find_ele_rec, find_ele_iter_f, find_ele_iter_r
# Misc: Everything else summed together

$corpus = "c";
$ngram = 1;

getopts('hc:n:');

if ($opt_h) {
    print STDOUT "Usage $0 [-h] [-c corpus] [-n ngram]\n";
}

if ($opt_c) {
    $corpus = $opt_c;
}

if ($opt_n) {
    $ngram = $opt_n;
}

$froot = $corpus . "prof" . $ngram . "-";

@case = ("Initial  ", "Quicksort", "Iter First", "Iter Last", "Big Table", "Better Hash", "Linear Lower");

print "Case\t\tSort\tList\tLower\tStrlen\tHash\tRest\n";

foreach $i (1..7) {
    $fname = $froot . $i . ".txt";
    $sort_time = 0.0;
    $lower_time = 0.0;
    $strlen_time = 0.0;
    $hash_time = 0.0;
    $list_time = 0.0;
    $rest_time = 0.0;
    open(INFILE, $fname) || die("Cannot open '" . $fname . "'");
    while ($line = <INFILE>) {
	chomp $line;
	@fields = split("[ ]+", $line);
	$cnt = @fields;
	if ($cnt == 8) {
	    $time = $fields[3];
	    $funct = $fields[7];
	    if ($time =~ /^[0-9]+\.[0-9]+/) {
		if ($funct =~ /lower[1-2]/) {
		    $lower_time = $time;
		} elsif ($funct eq "Strlen") {
		    $strlen_time = $time;
		} elsif ($funct eq "sort_words") {
		    $sort_time = $time;
		} elsif ($funct =~ /^h_/) {
		    $hash_time = $time;
		} elsif ($funct =~ /^find_ele_/) {
		    $list_time = $time;
		} else {
		    $rest_time += $time;
		}
	    }
	}
    }
    print "$case[$i-1]\t$sort_time\t$list_time\t$lower_time\t$strlen_time\t$hash_time\t$rest_time\n";
}

