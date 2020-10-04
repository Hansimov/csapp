CC = gcc
CFLAGS = -Wall -Og

#CFILESONLY = dll\
#	libvector

PROGS = prog\
	prog2c\
	prog2l\
	prog2r\
	p1\
	map\
	static.o\
	elfstructs.o\
	foobar3\
	foobar4\
	foobar5\
	foobar6\
	foobar1\
	foobar2\
	linkerror\
	libc-relo.d

# Do nothing
all: $(PROGS)

libc-relo.d: libc.so.6
	objdump -dx libc.so.6 > libc-relo.d

# example program 1 
prog: main.o sum.o
	$(CC) $(CFLAGS) -o prog main.o sum.o
	$(CC) $(CFLAGS) -S main.c
	objdump -dx main.o          > main-relo.d
	objdump -dx -j .data main.o > maindata-relo.d
	readelf -s main.o	    > mainsym.d	
	objdump -dx sum.o           > sum-relo.d
	objdump -dx -j .data sum.o  > sumdata-relo.d
	objdump -dx prog            > prog-exe.d
	objdump -dx -j .data prog   > progdata-exe.d

# Static library linked at compile time
prog2c: main2.o addvec.o multvec.o
	$(CC) $(CFLAGS) -c main2.c addvec.c multvec.c
	ar rcs libvector.a addvec.o multvec.o
	$(CC) $(CFLAGS) -static -o prog2c main2.o libvector.a
	$(CC) $(CFLAGS) -static -o prog2c main2.o -L. -lvector

# Shared library linked at load-time
prog2l: main2.o libvector.so
	$(CC) $(CFLAGS) -o prog2l main2.o ./libvector.so
	objdump -dx main2.o          > main2-relo.d
	objdump -dx prog2l > prog2l-exe.d
	objdump -xs -j .data -j .got prog2l > prog2ldata-exe.d

# Shared library linked at run time
prog2r: dll.c
	$(CC) $(CFLAGS) -rdynamic -o prog2r dll.c -ldl

libvector.so: addvec.c multvec.c	
	$(CC) $(CFLAGS) -shared -fpic -o libvector.so addvec.c multvec.c
	objdump -xd libvector.so > libvector-relo.d
	objdump -xRr -j .data -j .got -j .got.plt -j rela.dyn -j rela.plt libvector.so > libvectordata-relo.d

# symbol practice problem
p1: m.o swap.o
	$(CC) $(CFLAGS) -o p1 m.o swap.o
	objdump -dx m.o > m-relo.d
	objdump -dx -j .data m.o > mdata-relo.d
	objdump -dx swap.o > swap-relo.d
	objdump -dx -j .data swap.o > swapdata-relo.d
	objdump -dx p1  > p1-exe.d
	objdump -dx -j .data p1 > p1data-exe.d

p3: m.o swap2.o
	$(CC) $(CFLAGS) -o p3 m.o swap2.o

p4: prog.o sum.o
	$(CC) $(CFLAGS) -o p4 prog.o sum.o

foobar3: foo3.c bar3.c
	$(CC) $(CFLAGS) -o foobar3 foo3.c bar3.c

foobar4: foo4.c bar4.c
	$(CC) $(CFLAGS) -o foobar4 foo4.c bar4.c

foobar5: foo5.c bar5.c
	$(CC) $(CFLAGS) -o foobar5 foo5.c bar5.c

# This one is supposed to generate a compiler warning
foobar6: foo6.c bar6.c
	$(CC) $(CFLAGS) -o foobar6 foo6.c bar6.c


######################################### 
# These are supposed to fail at link time
######################################### 
linkerror: linkerror.c
	# Expected to fail
	-$(CC) $(CFLAGS) -o linkerror linkerror.c

foobar1: foo1.c bar1.c
	# Expected to fail
	-$(CC) $(CFLAGS) -o foobar1 foo1.c bar1.c

foobar2: foo2.c bar2.c
	# Expected to fail
	-$(CC) $(CFLAGS) -o foobar2 foo2.c bar2.c


clean:
	rm -f $(PROGS) *.o *~


