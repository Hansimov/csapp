#!/usr/bin/perl -w
#!/usr/local/bin/perl -w
use Getopt::Std;

#################################################################
# getasmfun - extract function from disassembled assembly code
#
# Randal E. Bryant, Carnegie Mellon, 2005
#
# Usage getasmfun [-h] [-f <function>] < <asmfile> > <outfile>
#   -f <function> Extract only named function
#   -h            Print help message
#
# Scans stdin looking for named function.  Then emits lines until
# it hits an "ret" instruction
# Skips lines containing compiler directives
#
#################################################################

getopts('hf:');

my ($opt_h);

if ($opt_h) {
    print STDOUT "Usage $0 [-h] -a|-f function\n";
    print STDOUT "      -h          Print this message\n";
    print STDOUT "      -f function Extract named function\n";
}

$fname = "***";
if ($opt_f) {
  $fname = $opt_f;
  $all_funs = 0;
} else {
  $fname = "XXX";
  $all_funs = 1;
}

$active_reset = 1;

$active = $active_reset;

while (<>) {
    $line = $_;
    if ($line =~ /^_*$fname:/) {
      $active = 1;
      print $line;
    } elsif ($all_funs && ($line =~ /^[a-zA-Z0-9_]+:/)) {
      $active = 1;
      print $line;
    } elsif ($line =~ /^\t+\./) {
	# Skip line
    } elsif ($line =~ /^\.L[A-Z]/) {
	# Skip line
    } elsif ($line =~ /^\.[a-z]/) {
	# Skip line
    } elsif ($line =~ /^LM/) {
	# Skip line
    } elsif ($active &&
	     ($line =~ /^\tret/ || $line =~ /^\trep ; ret/)) {
	print $line;
	$active = $active_reset;
	print "\n";
    } elsif ($active == 1) {
	print $line;
    } else {
#	print "SKIP: $line";
    }
}
