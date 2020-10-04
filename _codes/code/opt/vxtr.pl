#!/usr/bin/perl
#!/usr/local/bin/perl

# Compare benefits of vectorization

$maxunroll = 12;

for ($i = 0; $i < $maxunroll; $i++) {
  $hcount[$i] = 0;
}

for ($i = 0; $i < $maxunroll; $i++) {
  $entry_s[$i] = "    ";
  $entry_v[$i] = "    ";
}

$factor = 0;
$is_scalar = 0;

while (<>) {
    $line = $_;
    chomp $line;
    if ($line =~ "Array code, unrolled by ([0-9]+), Superscalar x([0-9]+):" && $1 == $2) {
	$factor = $1;
	$is_scalar = 1;
    } elsif ($line =~ "Array reference, accumulate in temporary:") {
	$factor = 1;
	$is_scalar = 1;
    } elsif ($line =~ "SSE code, ([0-9]+).* parallelism:") {
	$factor = $1;
	$is_scalar = 0;
    } else {
	if ($line =~ "([0-9\.]+) cycles/element") {
	    $time = $1;
	    if ($factor > 0) {
		if ($is_scalar) {
		    $entry_s[$factor-1] = $time;
		} else {
		    $entry_v[$factor-1] = $time;
		}
		$hcount[$factor-1] += 1;
	    }
	}
	$factor = 0;
    }
}

print "Factor | Scalar | Vector \n";
for ($s = 1; $s <= $maxunroll; $s++) {
    if ($hcount[$s-1] > 0) {
	if ($s >= 10) {
	    print "  X $s |";
	} else {
	    print "  X  $s |";
	}
	print "  $entry_s[$s-1]  |  $entry_v[$s-1]\n";
    }
}

