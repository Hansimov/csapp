#####################################################################
# CS:APP Shell Lab
# Directions to Instructors
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
######################################################################

This directory contains the files that you will need to run the CS:APP
shell lab. The lab is the student's first experience with systems-level
programming, and teaches them about processes, process control, and
signals.

************
1. Overview
************

In this lab, students build a simple Unix shell with job control.
They are given a skeleton called tsh.c (Tiny Shell) that implements
some of the less interesting functions, and are then asked to
implement the functions and signal handlers that provide job control.

Students evaluate the functionality of their shells using a
trace-driven driver program called sdriver.pl.

The reference solution is in ./src/tsh.c

********
2. Files
********

README
grade/			Autograding scripts
shlab-handout/		Handout directory that is given to the students
src/			Trace-driven driver program
writeup/		Sample Latex lab writeup

*******************
3. Building the Lab
*******************

To build the lab, modify the Latex lab writeup in ./writeup/shlab.tex
for your environment. Then type the following in the current
directory:

	unix> make clean
	unix> make 

The Makefile generates the driver code, formats the lab writeup, and
then copies the driver code to the shlab-handout directory.  Finally,
it builds a tarfile of the shlab-handout directory (in
shlab-handout.tar) which you can distribute to students.  The command:

	unix> make dist DEST=<DIR>

will copy the tarfile and copies of the writeup to directory <DIR>,
where the students can access it.


**********************
4. Autograding the Lab
**********************

There is an autograding script that automatically grades the lab.  See
./grade/README for instructions.


