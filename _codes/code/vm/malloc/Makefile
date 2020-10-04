#
# Makefile for the malloc lab driver
#

#
# Set to -m32 for 32 bit, blank or -m64 for 64 bit
#
32BIT =   

# No need to change anything below here 
CC = gcc
CSAPP_INC = ../../include
CSAPP_SRC = ../../src

CFLAGS = -Wall -Wno-unused-result -O2 -I $(CSAPP_INC) -I . -DDRIVER $(32BIT)

OBJS = csapp.o mdriver.o mm.o memlib.o fsecs.o fcyc.o clock.o ftimer.o driverlib.o 

all: mdriver

mdriver: $(OBJS)
	$(CC) $(CFLAGS) -o mdriver $(OBJS) -lpthread

mdriver.o: mdriver.c fsecs.h fcyc.h clock.h memlib.h config.h mm.h driverlib.h
memlib.o: memlib.c memlib.h
mm.o: mm.c mm.h memlib.h
fsecs.o: fsecs.c fsecs.h config.h
fcyc.o: fcyc.c fcyc.h
ftimer.o: ftimer.c ftimer.h config.h
clock.o: clock.c clock.h
driverlib.o: driverlib.c driverlib.h
csapp.o: $(CSAPP_SRC)/csapp.c
	$(CC) -c $(CFLAGS) $(CSAPP_SRC)/csapp.c

clean:
	rm -f *~ *.o mdriver

#############################################################
# Use these rules to switch back and forth between different
# versions of mm.c. E.g., "make implicit" installs the
# implicit list malloc package described in the CS:APP text.
#############################################################

implicit: # implicit list version
	rm -f mm.c mm.o; ln -s mm-implicit.c mm.c

explicit: # explicit list version
	rm -f mm.c mm.o; ln -s mm-explicit.c mm.c

seglist: # segmented list version
	rm -f mm.c mm.o; ln -s mm-seglist.c mm.c


