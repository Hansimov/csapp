0;269;0cCC = gcc
ICS = ..
CFLAGS = -Wall -Og -m64

PROGS = hello

all: $(PROGS)

hello: hello.c
	$(CC) $(CFLAGS) -o hello hello.c
	$(CC) $(CFLAGS) -S hello.c -o hello.s
	grep -v ".L[ABD-F][A-F0-9]*:" hello.s  | grep -v ".cfi_"  | grep -v ".p2align" > hello.64s
	$(CC) $(CFLAGS) -c hello.c
	objdump -d hello.o > hello.64d

clean:
	rm -f $(PROGS) hello *.o *.64s *.64d *~


