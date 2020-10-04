CC = gcc
CSAPP_INC = ../include
CSAPP_SRC = ../src
CFLAGS = -Wall -Og -I $(CSAPP_INC) -I . 
LDLIBS = -lpthread

PROGS = fragments.o\
	waitforsignal\
	sigsuspend\
	orphan\
	blockone\
	procmask1\
	procmask2\
	counterprob\
	waitprob0\
	waitprob1\
	waitprob3\
	fork1\
	fork2\
	fork3\
	forkprob1\
	forkprob2\
	forkprob3\
	forkprob4\
	forkprob5\
	forkprob6\
	forkprob7\
	forkprob8\
	setjmp\
	alarm\
	restart\
	signal1\
	signal2\
	signal3\
	signal4\
	sigint\
	sigintsafe\
	shellex\
	kill\
	psignal\
	getpid\
	fork\
	waitpid1\
	waitpid2\
	myecho\
	stack\
	sigfpe\
	sigbus\
	sigsegv\
	forkprob0\
	signalprob0\
	snooze\
	test\
	pg\
	pgchild\
	hello\
	hello-asm32\
	hello-asm64\
	jmpbuf\
	rfork.o\
	rfork-driver\
	cmdline

all: $(CSAPP_SRC)/csapp.o $(PROGS)

# confirm that argc and argv are in registers
cmdline: cmdline.c
	$(CC) $(CFLAGS) -o cmdline cmdline.c
	objdump -d cmdline > cmdline.d

# rfork-driver doesn't use csapp.c
rfork-driver: rfork-driver.c rfork.c
	$(CC) -o rfork-driver rfork-driver.c rfork.c


# hello-asm.s is a handwritten asm program for syscalls using the IA32 convention
hello-asm32: hello-asm32.s
	$(CC) -m64 -o hello-asm32 hello-asm32.s

# hello-asm64.s is a handwritten asm program for syscalls using the x86-64 convention
hello-asm64: hello-asm64.s
	$(CC) -m64 -o hello-asm64 hello-asm64.s

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

clean:
	rm -f $(PROGS) *.o *~


