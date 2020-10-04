#!/usr/bin/perl
#!/usr/local/bin/perl
# Extract hex bytes from disassembled file

use Getopt::Std;

#
# usage - print help message and terminate
#
sub usage 
{
    printf STDERR "$_[0]\n";
    printf STDERR "Usage: $0 [-h] -b <trimbyte> -f <fun> < disfile \n";
    printf STDERR "Options:\n";
    printf STDERR "  -h            Print this message\n";
    printf STDERR "  -b <trimbyte> Trim trailing copies of specified byte\n";
    printf STDERR "  -f <fun> Only give bytes for specified function\n";
    die "\n";
}

getopts('hb:f:');
if ($opt_h) {
    usage();
}

$bcount = 0;
$generate = 1;


@bytes = ();

while (<>)
{
    $line = $_;
    chomp $line;
    if ($opt_f && $line =~ /<([_A-Za-z0-9]+)>:/) {
	$function = $1;
	if ($function eq $opt_f) {
	    $generate = 1;	    
	} else {
	    $generate = 0;
	}
    } elsif ($generate == 1 && $line =~ /[ ]*[0-9a-f]+:[ \t]+(([0-9a-f][0-9a-f][ ])*[0-9a-f][0-9a-f])/) {
	@morebytes = split (/ /, $1);
	foreach $b (@morebytes) {
	    $bytes[$bcount] = $b;
	    $bcount++;
	}
    }
}

if ($opt_b) {
  # Trim trailing copies of specified byte
    while ($bytes[$bcount-1] eq $opt_b) {
	$bcount--;
    }
}

foreach ($i = 0; $i < $bcount; $i++) {
    print "$bytes[$i] ";
}

print "\n";






