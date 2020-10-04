.SUFFIXES:      .c .o .s

#x86-Linux with gcc
CC = gcc
OPTIONS = -O3 -m32 -static -W -Wall -fomit-frame-pointer 

#x86-Linux with Portland Group Compiler
#CC = pgcc
#OPTIONS = -O3 -mpentiumpro

#SGI Irix CC, SUN Solaris CC
#CC = CC
#OPTIONS = -64 -O3

#Alpha TRUE64 Unix CC
#CC = CC
#OPTIONS = -O4 -non_shared -arch=ev67
#OPTIONSLD = -O4 -non_shared

PROGNAME = memperf
OBJECTS = lcpy.o cpy.o par.o

LIBRARIES = -lm

pentium:	DEFINES = -DPENTIUMCOUNTER -DHWCOUNTER
pentium:	$(PROGNAME)

pentiumopt:	DEFINES = -DPENTIUMCOUNTER -DHWCOUNTER -DHAVEOPT
pentiumopt:	OBJECTS = $(OBJECTS) cpy_p3opt.o
pentiumopt:	cpy_p3opt.o $(PROGNAME)


alpha:		DEFINES = -DALPHACOUNTER -DHWCOUNTER
alpha:		OBJECTS = $(OBJECTS) rtclock.o
alpha:		rtclock.o $(PROGNAME)

shmem:		PROGNAME = $(PROGNAME)_shared
shmem:		DEFINES = -DSHAREDMEM
shmem:		$(PROGNAME)

$(PROGNAME):	$(OBJECTS)
	$(CC) $(OPTIONS) -o $(PROGNAME) $(OBJECTS) $(LIBRARIES)

lcpy.o:	lcpy.c  cpy.h par.h
	$(CC) $(OPTIONS) $(DEFINES) -c lcpy.c

cpy.o:	cpy.h gettime.h gettimealpha.h p5tsc.h
	$(CC) $(OPTIONS) $(DEFINES) -c cpy.c -o cpy.o

cpy_p3opt.o: cpy_p3opt.c
	$(CC) $(OPTIONS) $(DEFINES) -c cpy_p3opt.c -o cpy_p3opt.o

par.o:	par.c
#	$(CC) $(OPTIONS) -c -DBINDTOCPU par.c
	$(CC) $(OPTIONS) -c par.c

rtclock.o:	rtclock.s
	touch rtclock.o #	$(CC) -O 2 -c rtclock.s -o rtclock.o

assembly:	lcpy.c par.h p5tsc.h gettime.h
	$(CC) $(OPTIONS) -S lcpy.c

exec:	lcpy.s par.o
	$(CC) $(OPTIONS) -o $(PROGNAME) lcpy.s par.o

clean:
	rm -f *~ *.o

cleanall:
	rm -f *~ *.o $(PROGNAME) $(PROGNAME)_shared lcpy.s cpy.s


