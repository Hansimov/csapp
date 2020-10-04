#!/usr/bin/perl

use Getopt::Std;

# Generate table measured and profile runtimes
# Source file of the name <CORPUS><FILE>-<NGRAM>-<NUM>.txt
# Where <CORPUS> encodes name of corpus, <NGRAM> is n-gram size, and <NUM> is 1-7.
# <FILE> is either "run" for original run or "prof" for profile run
# Want to measure total time spent and their ratios

$corpus = "s";
$ngram = 1;

@case = ("Initial  ", "Quicksort", "Iter First", "Iter Last", "Big Table", "Better Hash", "Linear Lower");

getopts('hc:n:t');

if ($opt_h) {
    print STDOUT "Usage $0 [-h] [-t] [-c corpus] [-n ngram]\n";
    exit(0);
}

if ($opt_c) {
    $corpus = $opt_c;
}

if ($opt_n) {
    $ngram = $opt_n;
}

$rroot = $corpus . "run" . $ngram . "-";
$proot = $corpus . "prof" . $ngram . "-";

$rkeyword = "'Total time'";
$pkeyword = "sort_words";

if (!$opt_t) {
    print "Version   \tOverall\tProfile\tRatio\n";
}

foreach $i (1..7) {
    $rfile = $rroot . $i . ".txt";
#    print "Run: Grepping $rkeyword from $rfile.  ";
    $rline = `grep $rkeyword $rfile` ||
	die "Could not grep from $rfile\n";
    $rline =~ /([0-9]+\.[0-9]*)/;
    $rtime = $1;
#    print "Got $rtime\n";

#    print "Profile: Grepping $pkeyword from $pfile.  ";
    $pfile = $proot . $i . ".txt";
    $pline = `grep $pkeyword $pfile` ||
	die "Could not grep from $pfile\n";
    $pline =~ /^\s*[0-9]+\.[0-9]+\s+([0-9]+\.[0-9]*)/;
    $ptime = $1;
#    print "Got $ptime\n";

    $ratio = $rtime / $ptime;
    $fstring = "%s\t%.2f\t%.2f\t%.2f\n";
    if ($opt_t) {
	$fstring = "%s\t& %.2f\t & %.2f\t& %.2f \\\\\n";
    }

    printf ($fstring, $case[$i-1], $rtime, $ptime, $ratio);
}

