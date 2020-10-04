#!/usr/bin/perl -w
#!/usr/local/bin/perl -w

# Filter to solve hex -> decimal conversion problems in disassembled code
# Usage ./dis-solve.pl < code.da > code2.da

while (<>) {
    $line = $_;
    if ($line =~ /#/) {
	# Look for a hex pattern
	if ($line =~ /([-]*)(0x[0-9a-f]+)/) {
	    $val = hex($2);
	    if ($val > 0x7FFFFFFF) {
		$val = $val - 0x80000000 -0x80000000;
	    }
	    if ($1 eq '-') {
		$val = -$val;
	    }
	    $width = length($val);
	    chomp $line;
	    $line = $line . " " x (6-$width) . $val . "\n";
	}
    } elsif ($line =~ /(begin|end)[ ]*([-a-zA-Z0-9]+)/) {
	$name = $2;
	$nname = $name . '2';
	$line =~ s/$name/$nname/;
    }
    print $line;
}
