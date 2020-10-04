CC = gcc
ICS = ..
CFLAGS=-Wall -Og
LDLIBS=-lrt

PROGS = sumvec\
	sumarrayrows\
	sumarraycols\
	sumarray3d\
	sumarray3d-ans\
	dotprod\
	cleararray\
	simaquarium.o\
	postit.o\
	game.o\
	transpose1.o\
	transpose2.o\
	transpose2b.o\
	optlab.o\
	missrate.o\
	missrate2.o\
	missrate2b.o

all: $(PROGS)

mountaintarfile:
	tar cvf - mountain > mountain.tar

sumtest:
	time ./sumarrayrows
	time ./sumarraycols

clean:
	rm -f $(PROGS) *.o *~


