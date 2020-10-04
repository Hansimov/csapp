CC = gcc

CSAPP_INC = ../include
CSAPP_SRC = ../src

CFLAGS = -Wall -O2 -I $(CSAPP_INC) -I .
LDLIBS = -lpthread

PROGS =	statcheck\
	openexamples\
	fdprob1\
	fdprob2\
	cpfile\
	cpstdin\
	sharing1\
	sharing2\
	sharing3\
	readdir\
	iofragments.o\

all: $(CSAPP_SRC)/csapp.o $(PROGS) 
$(PROGS): $(CSAPP_SRC)/csapp.o
$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

# Convert text file in place between Windows and Linux EOL conventions
windows2linux:
	perl -pi -e "s/\r\n/\n/g" eol.txt
	cat -v eol.txt

linux2windows:
	perl -p -i -e "s/\n/\r\n/g" eol.txt
	cat -v eol.txt

clean:
	rm -f $(PROGS) *.o *~
