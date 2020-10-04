CC = gcc
CFLAGS = -I . -O1 
FLAG32 = -m32
FLAGC89 = -std=c89 -Wpedantic
FLAGC99 = -std=c99 -Wpedantic
FLAGC11 = -std=c11 -Wpedantic
FLAG64= -m64

## On Cygwin
#FLAG64 =
# EXE=.exe
## On Linux
EXE=

PROGS = show-bytes\
	eg-dis$(EXE) \
	logic \
	bisbic \
	sum\
	extend\
	vulnerabilities.o \
	inplace-swap.o\
	casting.o\
	uhp-ans.o\
	rbyte-ans.o\
	rshift-templates.o\
	puzzle.o\
	floatcomp-template.o\
	wordsize$(EXE)\
	printf$(EXE)\
	sizes$(EXE)\
	uaddcheck$(EXE) tmultcheck$(EXE)\
	divconst$(EXE) \
	strlonger$(EXE)\
	eg-u2t-out.txt 	eg-t2u-out.txt \
	eg-dis2.64da \
	code-exe.64d \


all: $(PROGS)


code-exe.64d: code.c
	$(CC) $(CFLAGS) $(FLAG64) code.c -o code$(EXE)
	objdump -d code$(EXE) > code.64d

eg-dis$(EXE): eg-dis.c
	$(CC) $(CFLAGS) $(FLAG64) eg-dis.c -o eg-dis$(EXE)
	objdump -d eg-dis$(EXE) > eg-dis.64d
	cp -p eg-dis.64d eg-dis2.64d

eg-dis2.64da: eg-dis.64da dis-solve.pl
	./dis-solve.pl < eg-dis.64da > eg-dis2.64da

eg-u2t-out.txt: casting
	./casting > eg-u2t-out.txt

eg-t2u-out.txt: casting
	./casting 1 > eg-t2u-out.txt

wordsize$(EXE): wordsize.c
	$(CC) $(CFLAGS) -o wordsize$(EXE) wordsize.c


printf$(EXE): printf.c
	$(CC) $(CFLAGS) $(FLAG32) $(FLAG11) -o printf$(EXE) printf.c


uaddcheck$(EXE): uaddcheck.c
	$(CC) $(CFLAGS) -o uaddcheck$(EXE) uaddcheck.c

taddcheck$(EXE): taddcheck.c
	$(CC) $(CFLAGS) -o taddcheck$(EXE) taddcheck.c

divconst$(EXE): divconst.c
	$(CC) $(CFLAGS) -o divconst$(EXE) divconst.c


strlonger$(EXE): strlonger.c
	$(CC) $(CFLAGS) -o strlonger$(EXE) strlonger.c

constants-eg$(EXE): constants-eg.c
	$(CC) $(CFLAGS) $(FLAG64) $(FLAGC99) constants-eg.c -o constants-eg$(EXE)

clean:
	rm -f *~ *.out *.exe fcomp-O fcomp-g fcomp-mem

# Don't use this stuff
constants.out: constants.gcc.32 constants.c89.32 constants.c99.32 \
		 constants.gcc.64 constants.c89.64 constants.c99.64
	./constants.c89.32 -t -h > constants.out
	./constants.c99.32 -t    >> constants.out
	./constants.gcc.32 -t    >> constants.out
	./constants.c89.64 -t    >> constants.out
	./constants.c99.64 -t    >> constants.out
	./constants.gcc.64 -t    >> constants.out

constants.gcc.32: constants.c
	$(CC) $(CFLAGS) $(FLAG32) constants.c -o constants.gcc.32
	./constants.gcc.32

constants.c89.32: constants.c
	$(CC) $(CFLAGS) $(FLAG32) $(FLAGC89) constants.c -o constants.c89.32
	./constants.c89.32

constants.c99.32: constants.c
	$(CC) $(CFLAGS) $(FLAG32) $(FLAGC99) constants.c -o constants.c99.32
	./constants.c99.32

constants.gcc.64: constants.c
	$(CC) $(CFLAGS) $(FLAG64) constants.c -o constants.gcc.64
	./constants.gcc.64

constants.c89.64: constants.c
	$(CC) $(CFLAGS) $(FLAG64) $(FLAGC89) constants.c -o constants.c89.64
	./constants.c89.64

constants.c99.64: constants.c
	$(CC) $(CFLAGS) $(FLAG64) $(FLAGC99) constants.c -o constants.c99.64
	./constants.c99.64

constants-egs: constants-eg.32.def constants-eg.32.c89 constants-eg.32.c99 constants-eg.64.def constants-eg.64.c89 constants-eg.64.c99

constants-eg.32.def: constants-eg.c
	$(CC) $(FLAG32) constants-eg.c -o constants-eg.32.def

constants-eg.32.c89: constants-eg.c
	$(CC) $(FLAGC89) $(FLAG32) constants-eg.c -o constants-eg.32.c89

constants-eg.32.c99: constants-eg.c
	$(CC) $(FLAGC99) $(FLAG32) constants-eg.c -o constants-eg.32.c99

constants-eg.64.def: constants-eg.c
	$(CC) $(FLAG64) constants-eg.c -o constants-eg.64.def

constants-eg.64.c89: constants-eg.c
	$(CC) $(FLAGC89) $(FLAG64) constants-eg.c -o constants-eg.64.c89

constants-eg.64.c99: constants-eg.c
	$(CC) $(FLAGC99) $(FLAG64) constants-eg.c -o constants-eg.64.c99



