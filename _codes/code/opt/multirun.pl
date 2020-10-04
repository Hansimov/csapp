#!/usr/bin/perl
#!/usr/local/bin/perl

use Getopt::Std;

# Run combiner multiple times and see how things run.

$epsilon = 0.1;
$combiner = "./fsbench";
$trials = 5;
# How many values should I keep?
$keep = 3;

getopts('-hn:e:c:k:p:');

if ($opt_h) {
    print STDOUT "Usage $0 [-h] [-n trials] [-c combiner] [-e epsilon] [-k keep] [-p percentile]\n";
    exit(0);
}

if ($opt_n) {
    $trials = $opt_n;
}

if ($opt_c) {
    $combiner = $opt_c;
}

if ($opt_e) {
    $epsilon = $opt_e;
}

if ($opt_k) {
    $keep = $opt_k;
}

if ($opt_p) {
    $keep = int($trials * $opt_p);
}

# Record all function descriptions
@descrs = ();
# Record latest times
@latest_times = ();
# Record best individual time
@single_times = ();
# Record best individual time
@worst_times = ();
# Record trials for which achieve best individual time
@single_cnt = ();
# Record best overall time
@overall_times = ();
$best_overall_sum = 0.0;
# Record k best times for each benchmark.  Do this by expanding array to have $keep entries per benchmark
@ktimes = ();

# How many different benchmarks are there?
$benchmark_count = 0;

for ($trial = 0; $trial < $trials; $trial = $trial+1) {
    $data = `$combiner` || die "Couldn't run program '$combiner'\n";
    @lines = split (/\n/, $data);
    $overall_sum = 0.0;
    $index = 0;
    for $line (@lines) {
	if ($line =~ "([0-9\.]+) cycles/element") {
	    $time = $1;
	    $latest_times[$index] = $time;
	    $overall_sum = $overall_sum + $time;
	    if ($trial == 0 || $time < $single_times[$index]) {
		$single_times[$index] = $time;
		$single_cnt[$index] = 1;
	    } elsif ($time == $single_times[$index]) {
		$single_cnt[$index] = $single_cnt[$index] + 1;
	    }
	    # (Possibly) insert time into list of best times
	    $kindex = $keep * $index;
	    # Insertion point for new value
	    $insertindex = $kindex + $keep - 1;
	    if ($trial < $keep) {
		$insertindex = $kindex + $trial;
		$ktimes[$insertindex] = $time;
	    } elsif ($time < $ktimes[$insertindex]) {
		$ktimes[$insertindex] = $time;
	    } else {
		# No value inserted
		$insertindex = $kindex;
	    }
	    # Shift time into correct position
	    while ($insertindex > $kindex && $ktimes[$insertindex] < $ktimes[$insertindex-1]) {
		$t = $ktimes[$insertindex];
		$ktimes[$insertindex] = $ktimes[$insertindex-1];
		$ktimes[$insertindex-1] = $t;
		$insertindex = $insertindex - 1;
	    }
	    $index = $index + 1;
	} elsif ($trial == 0) {
	    $descrs[$index] = $line;
	}
    }
    if ($trial == 0) {
	$benchmark_count = $index;
    }
    if ($trial == 0 || $overall_sum < $best_overall_sum) {
	for ($b = 0; $b < $benchmark_count; $b = $b+1) {
	    $overall_times[$b] = $latest_times[$b];
	}
	$best_overall_sum = $overall_sum;
    }
}

for ($b = 0; $b < $benchmark_count; $b = $b+1) {
    print "$descrs[$b]\n";
    $hitrate = $single_cnt[$b] / $trials*100;
    print "Best: $single_times[$b] ($hitrate%), Overall Best: $overall_times[$b] ";
    print "$keep-most: $ktimes[($b+1)*$keep -1] cycles/element\n";
}

exit(0);

