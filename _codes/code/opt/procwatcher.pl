#!/usr/bin/perl

# Monitor cpu entry in /proc/cpuinfo

$lastspeed = 0;

while () {
    $speed = 0;
    $line = `grep \"cpu MHz\" /proc/cpuinfo`;
    $line =~ /([\.0-9]+)/;
    $speed = $1;
    if ($lastspeed != $speed) {
	print "Detected speed change to $speed\n";
	$lastspeed = $speed;
    }
}


