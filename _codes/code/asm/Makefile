CC = gcc
FPOINTER = -fno-omit-frame-pointer
OPTg = -Og
OPT1 = -O1
OPT2 = -O2

PROGS = hworld bufdemo-sp bufdemo-nosp bufovf-sp bufovf-nosp scheck64 

#-fno-exceptions

CSAPP2DIR=..
CINC = -I$(CSAPP2DIR)/include
CSAPPLIB32 = $(CSAPP2DIR)/lib/libcsapp32.a
CSAPPLIB64 = $(CSAPP2DIR)/lib/libcsapp64.a

EXTRACT = ./exbytes.pl

F32 =-m32
F32c = -m32 -march=i686 -msse2 -mfpmath=sse
F64 =-m64
FNOSP = -fno-stack-protector

MFLAGS = -mavx2 -mfma
CFLAGS = -Wall

.SUFFIXES: .c .32s .32ns .64s .32d .64d .O1-64s

.c.32s:
	$(CC) $(CFLAGS) $(OPTg) -fno-omit-frame-pointer $(CINC) -S $(F32) $*.c -o $*.s
	grep -v ".L[ABD-Z][A-F0-9]*:" $*.s | grep -v ".cfi_" | grep -v ".p2align" > $*.32s
	rm -f $*.s

.c.32ns:
	$(CC) $(CFLAGS) $(OPTg) -fomit-frame-pointer $(CINC) -S $(F32) $*.c -o $*.s
	grep -v ".L[ABD-Z][A-F0-9]*:" $*.s | grep -v ".cfi_" | grep -v ".p2align" > $*.32ns
	rm -f $*.s

.c.64s:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) -S $(F64) $*.c -o $*.s
	grep -v ".L[ABD-F][A-F0-9]*:" $*.s  | grep -v ".cfi_"  | grep -v ".p2align" > $*.64s
	rm -f $*.s

.c.O1-64s:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPT1) $(CINC) -S $(F64) $*.c -o $*.s
	grep -v ".L[ABD-F][A-F0-9]*:" $*.s  | grep -v ".cfi_"  | grep -v ".p2align" > $*.O1-64s
	rm -f $*.s

.c.32d:
	$(CC) $(CFLAGS) $(OPTg) $(CINC) $(F32) $*.c -c -o $*.o
	objdump -d $*.o > $*.32d
	rm -f $*.o

.c.64d:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) $*.c -c -o $*.o
	objdump -d $*.o > $*.64d
	rm -f $*.o


all: prog64 $(PROGS) wprog

# Execute on base machine
prog64:	\
	010-mstore.64s \
	010-mstore.64d \
	010-main-exe.64d \
	010-mstore-raw.64s \
	010-mstore-annotate.64s \
	010-mstore-rel.txt \
	010-mstore-exe.txt \
	010-mstore-intel.64s \
	020-fragments.64o \
	020-fragments.64d \
	030-add-suffixes.64o \
	030-add-suffixes.64d \
	040-bad-instrs.64s \
	050-exchange.64s \
	060-decode1-ans.64s \
	070-leaq.64s \
	080-shift.64s \
	090-arith.64s \
	100-muldiv.64s \
	110-cc.64s \
	120-branch.64s \
	120-branch.64d \
	120-branch-exe.64d \
	130-abs.64s \
	130-absdiff.64s \
	140-simple-if.64s \
	150-if.64s \
	160-fact.64s \
	160-fact.O1-64s \
	170-dw.64s \
	180-while.64s \
	180-while.O1-64s \
	190-fun.64s \
	190-fun.O1-64s \
	210-cond.64s \
	220-if2.64s \
	230-switch.64s \
	240-switch2.64s \
	250-switcher.64s \
	260-fun-exe.64d \
	261-fun2-exe.64d \
	262-recurse-exe.64d \
	270-hworld-exe.64d \
	280-calleesave.64s \
	285-calleesave2.64s \
	290-registers.64s \
	300-swapadd.64s \
	310-procregs.64s \
	320-procprobs.64s \
	340-recurse.64s \
	350-array.64s \
	350-array.O1-64s \
	360-fixarray.64s \
	370-rect.64s \
	380-structure.64s \
	390-struct2.64s \
	400-struct-eg.64s \
	410-union.64s \
	420-node.64s \
	430-struct-union.64s \
	440-align.64s \
	445-frame.64s \
	450-bufdemo.64s \
	450-bufdemo.nosp64s \
	460-bufovfnosp-exe.64d \
	480-charbuf.64s \
	480-charbuf.nosp64s \
	500-floatcvt.64s \
	510-cvt.64s \
	520-floatfunct.64s \
	530-float-funs.64s \
	540-floatconst.64s \


# Code for web asides
wprog: \
	w100-ia32.32s \
	w100-ia32.32ns \
	w110-procreg.32s \
	w110-procreg.32ns \
	w200-okmul.64s \
	w210-okmul-asm-proto.64s \
	w240-cnt.64s \


010-main-exe.64d: 010-mstore.c 010-main.c 010-code.gdb
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(F64) -o prog 010-mstore.c 010-main.c
	gdb prog -x 010-code.gdb > 010-code-gdb.out
	objdump -d prog > 010-main-exe.64d

010-mstore-raw.64s: 010-mstore.64s
	cp -p 010-mstore.64s 010-mstore-raw.64s

010-mstore-annotate.64s: 010-mstore.64s
	cp -p 010-mstore.c 010-mstore-annotate.c
	cp -p 010-mstore.64s 010-mstore-annotate.64s

010-mstore-intel.64s: 010-mstore.c
	cp -p 010-mstore.c 010-mstore-intel.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) -S $(F64) -masm=intel 010-mstore.c -o 010-mstore.s
	grep -v ".L[ABD-F][A-F0-9]*:" 010-mstore.s  | grep -v ".cfi_" > 010-mstore-intel.64s

010-mstore-rel.txt: 010-mstore.64d
	$(EXTRACT) -f multstore < 010-mstore.64d > 010-mstore-rel.txt

010-mstore-exe.txt: 010-main-exe.64d
	$(EXTRACT) -f multstore -b 90 < 010-main-exe.64d > 010-mstore-exe.txt

020-fragments.64o: 020-fragments.64sa
	cp -p 020-fragments.64sa 020-fragments.s
	$(CC) -Wall $(F64) -c 020-fragments.s -o 020-fragments.64o

020-fragments.64d: 020-fragments.64o
	objdump -d 020-fragments.64o > 020-fragments.64d

030-add-suffixes.64o: 030-add-suffixes.64sa
	cp -p 030-add-suffixes.64sa 030-add-suffixes.s
	$(CC) -Wall $(F64) -c 030-add-suffixes.s -o 030-add-suffixes.64o

030-add-suffixes.64d: 030-add-suffixes.64o
	objdump -d 030-add-suffixes.64o > 030-add-suffixes.64d

040-bad-instrs.64s: 040-bad-instrs.64sa
	cp -p 040-bad-instrs.64sa 040-bad-instrs.64s

120-branch-exe.64d: 120-branch.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(F64) -o 120-branch 120-branch.c
	objdump -d 120-branch > 120-branch-exe.64d

260-fun-exe.64d: 260-fun.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) -o 260-fun 260-fun.c
	objdump -d 260-fun > 260-fun-exe.64d

261-fun2-exe.64d: 261-fun2.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) -o 261-fun2 261-fun2.c
	objdump -d 261-fun2 > 261-fun2-exe.64d

262-recurse-exe.64d: 262-recurse.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) -o 262-recurse 262-recurse.c
	objdump -d 262-recurse > 262-recurse-exe.64d

260-fun-fp.64s: 260-fun.c
	$(CC) $(FPOINTER) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) -S $(F64) 260-fun.c -o 260-fun-fp.s
	grep -v ".L[ABD-F][A-F0-9]*:" 260-fun-fp.s  | grep -v ".cfi_" > 260-fun-fp.64s
	rm -f 260-fun-fp.s

270-hworld-exe.64d: 270-hworld.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) 270-hworld.c -o 270-hworld
	objdump -d 270-hworld > 270-hworld-exe.64d

330-frame-exe.64d: 330-frame.c
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $(F64) 330-frame.c -o 330-frame
	objdump -d 330-frame > 330-frame-exe.64d


abs: 130-abs.c 130-absdiff.c 130-abs-manual.s
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(F64) -o abs 130-abs.c 130-absdiff.c 130-abs-manual.s

abs-measure: 130-abs-measure.c 130-absdiff.c 130-abs-manual.s $(CSAPPLIB64)
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(F64) -o abs-measure $(CINC) 130-abs-measure.c 130-absdiff.c 130-abs-manual.s $(CSAPPLIB64) -lrt

linked-lists: linked-list-Og.64s linked-list-O1.64s linked-list-O2.64s

linked-list-Og.64s: linked-list.c
	gcc $(CFLAGS) $(MFLAGS) $(F64) -Og -S linked-list.c 
	grep -v ".L[ABD-F][A-F0-9]*:" linked-list.s | grep -v ".cfi_" > linked-list-Og.64s

linked-list-O1.64s: linked-list.c
	gcc $(CFLAGS) $(MFLAGS) $(F64) -O1 -S linked-list.c
	grep -v ".L[ABD-F][A-F0-9]*:" linked-list.s | grep -v ".cfi_" > linked-list-O1.64s

linked-list-O2.64s: linked-list.c
	gcc $(CFLAGS) $(MFLAGS) $(F64) -O2 -S linked-list.c 
	grep -v ".L[ABD-F][A-F0-9]*:" linked-list.s | grep -v ".cfi_" > linked-list-O2.64s

hworld: 270-hworld.c
	cp -p 270-hworld.c hworld.c
	gcc -o hworld hworld.c

bufdemo-nosp: 450-bufdemo.c
	gcc $(FNOSP) $(OPTg) 450-bufdemo.c -o bufdemo-nosp

bufdemo-sp: 450-bufdemo.c
	gcc $(OPTg) 450-bufdemo.c -o bufdemo-sp 

450-bufdemo.nosp64s: 450-bufdemo.c
	gcc $(FNOSP) $(OPTg) -S 450-bufdemo.c 
	grep -v ".L[ABD-F][A-F0-9]*:" 450-bufdemo.s  | grep -v ".cfi_" > 450-bufdemo.nosp64s

bufovf-nosp: 460-bufovf.c
	gcc $(FNOSP) $(OPTg) 460-bufovf.c -o bufovf-nosp

bufovf-sp: 460-bufovf.c
	gcc $(OPTg) 460-bufovf.c -o bufovf-sp 

460-bufovfnosp-exe.64d: bufovf-nosp
	objdump -d bufovf-nosp > 460-bufovfnosp-exe.64d

480-charbuf.nosp64s: 480-charbuf.c
	gcc $(FNOSP) $(OPTg) -S 480-charbuf.c 
	grep -v ".L[ABD-F][A-F0-9]*:" 480-charbuf.s  | grep -v ".cfi_" > 480-charbuf.nosp64s

w200-okmul: w200-okmul.c w220-okmul-asm64.s
	gcc $(OPTg) -o w200-okmul w200-okmul.c w220-okmul-asm64.s

w240-cnt: w240-cnt.c
	gcc -g $(OPT1) -o w240-cnt $(CINC) w240-cnt.c -lpthread

w240-cnt32: w240-cnt.c
	gcc -g $(F32) $(OPT1) -o w240-cnt32 $(CINC) w240-cnt.c -lpthread

w250-umult-full: w250-umult-full.c
	gcc -g $(OPT1) -o w250-umult-full w250-umult-full.c

w260-parity: w260-parity.c
	gcc -g $(OPT1) -o w260-parity w260-parity.c

w260-parity32: w260-parity.c
	gcc -g $(F32) $(OPT1) -o w260-parity32 w260-parity.c

scheck64: 470-scheck.c
	gcc $(OPTg) $(F64) 470-scheck.c -o scheck64

scheck32: 470-scheck.c
	gcc $(OPTg) $(F32) 470-scheck.c -o scheck32

clean:
	rm -f $(PROGS) *.o *~ *.32s *.64s *.32d *.64d *.32o *.64o *.nosp64s *.O1-64s


