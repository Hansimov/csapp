#!/usr/bin/perl
#!/usr/local/bin/perl

use Getopt::Std;

# Tabulate combining information


$wsize = 64;
$machine = "haswell";
$directory = "results";

@roots = ("isb", "ipb", "lsb", "lpb", "fsb", "fpb", "dsb", "dpb");

getopts('hw:m:d:r:');

if ($opt_h) {
    print STDOUT "Usage $0 [-h] [-w wordsize] [-m machine] [-d directory] [-r roots]\n";
    exit(0);
}

if ($opt_w) {
    $wsize = $opt_w;
}

if ($opt_m) {
    $machine = $opt_m;
}

if ($opt_d) {
    $directory = $opt_d;
}

if ($opt_r) {
    @roots = split (":", $opt_r);
}

# Record all function names
@functs = ();
# Record all function descriptions
@descrs = ();
# Create tab-separated list of times
@times = ();

$first = 1;
foreach $root (@roots) {
    $fname = "$directory/$root-$machine-$wsize.txt";
    open (IN, $fname) || die ("Couldn't open '$fname'\n");
    $cnt = 0;
    $descr = "";
    $data = "";
    $operation = "";
    $function = "";
    $time = "";

    while (<IN>) {
	$line = $_;
	chomp $line;
	if ($line =~ "([0-9\.]+) cycles/element") {
	    $time = $1;
	    $times[$cnt] = $times[$cnt] . $time . "\t";
	    $cnt = $cnt+1;
	} else {
	    ($left, $descr) = split (/:\s*/,$line);
	    ($data, $operation, $function) = split(/\s+/, $left);
	    if ($first == 1) {
		$functs[$cnt] = $function;
		$descrs[$cnt] = $descr;
		$times[$cnt] = "";
	    }
	}
    }
    close (IN);
    $first = 0;
}

# Print header information
foreach $root (@roots) {
    print "$root\t";
}
print "funct\t\tdescription\n";

for ($i = 0; $i < $cnt; $i++) {
    $function = $functs[$i];
    $description = $descrs[$i];
    $time = $times[$i];
    print "$time$function\t$description\n";
}
