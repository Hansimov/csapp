#####################################################################
# CS:APP Malloc Lab
# Directions to Instructors
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
######################################################################

This directory contains the files that you will need to run the CS:APP
malloc lab, which develops a student's understanding of pointers,
system-level programming, and memory managment.

************
1. Overview
************

In this lab, students write their own storage allocator, in particular
implementations of the malloc, free, and realloc functions. A
trace-driven driver (mdriver) evaluates the quality of the student's
implementation in terms of space utilization and throughput.

********
2. Files
********

Makefile		Makefile that builds the Lab
README			This file
grade/			Autograding scripts
malloclab-handout/	The files handed out to the students
src/			The driver sources
traces/			The malloc/free/realloc trace files used by the driver
writeup/		The malloc lab writeup	

*******************
3. Building the Lab
*******************

Step 1: Configure the driver in src/ for your site. See src/README for
detailed information on the driver.

Step 2: Modify the Latex writeup in writeup/ to reflect the handout
and handin directions for your site. If you don't use Latex, use your
favorite document preparation system to prepare Postcript and PDF
versions of the writeup in malloclab.ps and malloclab.pdf.

Step 3: Modify the LABNAME and DEST variables in ./Makefile for your
site.

Step 4: Type "make" to build the $(LABNAME)-handout.tar file.

Step 5: Type "make dist" to copy the $(LABNAME)-handout.tar file
and the writeup to the distribution directory where the students
will retrieve the lab. 

******************
4. Grading the Lab
******************

There are autograding scripts for this lab. See grade/README for
details.
