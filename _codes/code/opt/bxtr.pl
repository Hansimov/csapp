#!/usr/bin/perl
#!/usr/local/bin/perl

# Extract results from unrolling & superscalar benchmark

$maxunroll = 12;

for ($i = 0; $i < $maxunroll; $i++) {
  $ucount[$i] = 0;
  $scount[$i] = 0;
}

for ($i = 0; $i < $maxunroll*$maxunroll; $i++) {
  $entry[$i] = "    ";
}

$unroll = 0;
$superscalar = 0;

while (<>) {
  $line = $_;
  chomp $line;
  if ($line =~ "Array code, unrolled by ([0-9]+), Superscalar x([0-9]+):") {
    $unroll = $1;
    $superscalar = $2;
  } elsif ($line =~ "Array reference, accumulate in temporary:") {
    $unroll = 1;
    $superscalar = 1;
  } elsif ($line =~ "Array code, unrolled by ([0-9]+):") {
    $unroll = $1;
    $superscalar = 1;
  } else {
    if ($line =~ "([0-9\.]+) cycles/element") {
      $time = $1;
      if ($unroll > 0) {
	$entry[($unroll-1)*$maxunroll + ($superscalar-1)] = $time;
	$ucount[$unroll-1] += 1;
	$scount[$superscalar-1] += 1;
#	print "$unroll X $superscalar --> $time\n";
      }
    }
    $unroll = 0;
    $superscalar = 0;
  }
}

print "             Unroll\n";
print " +-----";
for ($u = 1; $u <= $maxunroll; $u++) {
  if ($ucount[$u-1] > 0) {
    print "------";
  }
}
print "+\n";
print " | SS |";
for ($u = 1; $u <= $maxunroll; $u++) {
  if ($ucount[$u-1] > 0) {
    if ($u >= 10) {
      print "  $u  ";
    } else {
      print "  $u   ";
    }
  }
}
print "|\n";
print " |    +";
for ($u = 1; $u <= $maxunroll; $u++) {
  if ($ucount[$u-1] > 0) {
    print "------";
  }
}
print "+\n";

for ($s = 1; $s <= $maxunroll; $s++) {
  if ($scount[$s-1] > 0) {
    print " | ";
    if ($s >= 10) {
      print "$s |";
    } else {
      print "$s  |";
    }
    for ($u = 1; $u <= $maxunroll; $u++) {
      $time = $entry[($u-1)*$maxunroll + $s-1];
      if ($ucount[$u-1] > 0) {
	if ($time >= 10.0) {
	  print " $time";
	} else {
	  print "  $time";
	}
      }
    }
    print "|\n";
  }
}
print " +-----";
for ($u = 1; $u <= $maxunroll; $u++) {
  if ($ucount[$u-1] > 0) {
    print "------";
  }
}
print "+\n";

