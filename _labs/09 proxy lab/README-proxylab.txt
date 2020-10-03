#####################################################################
# CS:APP Proxy Lab
# Directions to Instructors
#
# Copyright (c) 2004-2016, R. Bryant and D. O'Hallaron, All rights reserved.
######################################################################

************
1. Overview
************

In this lab, students build a simple concurrent caching Web proxy that
accepts HTTP 1.0 requests from clients, forwards them to end servers,
and then sends the replies back to the clients.  The proxy caches
objects returned by the end servers, and attempts to satisfy requests
from clients from the cache before forwarding the requests to the end
servers.

********
2. Files
********

Makefile           Builds the entire lab
README             This file
proxylab-handout/  Handout directory that goes to the students. Regenerated from src/
src/               Source code for the solution and the driver
writeup/           Latex lab writeup
grade/             Grading directory where instructors/TAs run the autograder

*******************
3. Building the Lab
*******************

Step 1: Modify the Latex writeup in writeup to reflect the handout and
handin instructions for your site.

Step 2: Type "make clean; make" to format the writeup in writeup/proxylab.pdf
and to build the proxylab-handout.tar file.

Step 3: Distribute proxylab.pdf and proxylab-handout.tar to the students. 

******************
4. Grading the Lab
******************

Autograding scripts are available in the grade/ directory. See grade/README for details.

When we offer this lab at CMU, we do some additional manual grading:
- Manually test on four real sites (see writeup/proxylab.tex for details)
- Manually grade for Style
- Manually check for errors that the autograder doesn't check for,
  such as race conditions on shared data structures.

************
5. Solutions
************
The reference solution is in ./src/proxy.[ch] and ./src/cache.[ch]

