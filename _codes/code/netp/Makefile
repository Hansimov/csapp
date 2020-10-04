CC = gcc

CSAPP_INC = ../include
CSAPP_SRC = ../src

CFLAGS = -Wall -O2 -I $(CSAPP_INC) -I .
LDLIBS = -lpthread

PROGS =	echo.o\
	dd2hex\
	hex2dd\
	hostinfo\
	hostinfo-ntop\
	echoclient\
	echoserveri\
	tiny/tiny\
	netpfragments.o\

all: $(CSAPP_SRC)/csapp.o $(PROGS) 
$(PROGS): $(CSAPP_SRC)/csapp.o
$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

tiny/tiny: tiny/tiny.c
	(cd tiny; make)	

# Programs that need more than one .o file
echoserveri: echoserveri.o echo.o
 
tinytarfile:
	(cd tiny; make clean)
	tar cvf - tiny >tiny.tar

clean:
	rm -f $(PROGS) *.o *~
	(cd tiny; make clean)
