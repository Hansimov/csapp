CC = gcc
CFLAGS = -O1 -Wall
#CFLAGS = -O1 -Wall -DUSE_TSC
INC = ../include
LIB = ../lib

F64 =-m64

F32 =-m32

OBJS32 = clock32.o fcyc32.o csapp32.o lsquare32.o cpe32.o
OBJS64 = clock64.o fcyc64.o csapp64.o lsquare64.o cpe64.o

OBJS =  $(OBJS64)

all: $(LIB)/libcsapp64.a
#all: $(LIB)/libcsapp32.a $(LIB)/libcsapp64.a

### 32 Bit Code
# This file must be compiled with gcc due to embedded assembly
clock32.o: clock.c $(INC)/clock.h
	gcc $(CFLAGS) $(F32) -c -o clock32.o clock.c -I$(INC)

fcyc32.o: fcyc.c $(INC)/fcyc.h $(INC)/clock.h
	$(CC) $(CFLAGS) $(F32) -c -o fcyc32.o fcyc.c -I$(INC)

csapp32.o: $(INC)/csapp.h csapp.c
	$(CC) $(CFLAGS) $(F32) -c -o csapp32.o csapp.c -I$(INC)

lsquare32.o: $(INC)/lsquare.h lsquare.c
	$(CC) $(CFLAGS) $(F32) -c -o lsquare32.o lsquare.c -I$(INC)

cpe32.o: $(INC)/clock.h $(INC)/clock.h $(INC)/cpe.h cpe.c
	$(CC) $(CFLAGS) $(F32) -c -o cpe32.o cpe.c -I$(INC)

$(LIB)/libcsapp32.a: $(OBJS32)
	ar rcs $(LIB)/libcsapp32.a $(OBJS32)

### 64 Bit Code
# This file must be compiled with gcc due to embedded assembly
clock64.o: clock.c $(INC)/clock.h
	gcc $(CFLAGS) $(F64) -c -o clock64.o clock.c -I$(INC)

fcyc64.o: fcyc.c $(INC)/fcyc.h $(INC)/clock.h
	$(CC) $(CFLAGS) $(F64) -c -o fcyc64.o fcyc.c -I$(INC)

csapp64.o: $(INC)/csapp.h csapp.c
	$(CC) $(CFLAGS) $(F64) -c -o csapp64.o csapp.c -I$(INC)

lsquare64.o: $(INC)/lsquare.h lsquare.c
	$(CC) $(CFLAGS) $(F64) -c -o lsquare64.o lsquare.c -I$(INC)

cpe64.o: $(INC)/clock.h $(INC)/clock.h $(INC)/cpe.h cpe.c
	$(CC) $(CFLAGS) $(F64) -c -o cpe64.o cpe.c -I$(INC)

$(LIB)/libcsapp64.a: $(OBJS64)
	ar rcs $(LIB)/libcsapp64.a $(OBJS64)


# 
# Sparc cycle counter examples (for future reference)
# 
#sparc_tick.o: sparc_tick.s
#	as -xarch=v8plus sparc_tick.s
#
# This tests the get_tick routine in sparc_tick.s
#sparc_tick_driver: sparc_tick_driver.c sparc_tick.o
#	$(CC) $(CFLAGS) -o sparc_tick_driver sparc_tick_driver.c sparc_tick.o


clean:
	rm -f sparc_tick_driver *.o *~

