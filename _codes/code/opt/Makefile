WEBDIR = /afs/cs/project/csapp3/www
# Choose your word size
WSIZE = 64
OPTLEVEL = 2
GOPTLEVEL = g
# WSIZE = 32
CC = gcc
GFLAGS = -pg 
INC = ../include
MCFLAGS = -Wall -I. -I$(INC) -mavx2 -mfma
# From ics2:
# MCFLAGS = -g -Wall -O$(OPTLEVEL) -I. -I$(INC) -msse4 -fno-inline -fno-optimize-sibling-calls -lrt -mfpmath=sse
# Remove -m sse4
# MCFLAGS = -g -Wall -O$(OPTLEVEL) -I. -I$(INC) -fno-inline -fno-optimize-sibling-calls -lrt -mfpmath=sse
CFLAGS = $(MCFLAGS) -m$(WSIZE)
F386 = -march=i386
F686 = -march=i686
LIB = ../lib
LIBCSAPP = $(LIB)/libcsapp$(WSIZE).a -lrt
GETASM = ../getasmfun.pl
RUNPOS = 0.8
RUNCNT = 50
MULTIRUN = ./multirun.pl -n $(RUNCNT) -p $(RUNPOS)
BXTR = ./bxtr.pl
VXTR = ./vxtr.pl
TABULATE = ./tabulate.pl
# Choose your machine
# MACHINE = p4
# MACHINE = athlon
# MACHINE = haswell
MACHINE=machine
RESULTS=results

PROGS = isbench\
	ipbench\
	lsbench\
	lpbench\
	fsbench\
	fpbench\
	dsbench\
	dpbench\
	dpb-O1.64s\
	dpb-O2.64s\
	div\
	dmult\
	lower\
	list\
	test_cpe\
	test_cpe.64s\
	copy\
	twiddle.o\
	opt-meas\
	swap.o\
	func.o\
	fragments.o\
	deref.o\


all: $(PROGS)

bench: isbench ipbench lsbench lpbench fsbench fpbench dsbench dpbench tabulate fpb-O1.64s fpb-O2.64s

fragments.o: fragments.c
	$(CC) -c -DSUM -DLONG fragments.c

isbench:   vec.h combine.h combine.c benchmark.c vec.c $(LIBCSAPP)
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DINT -o isbench benchmark.c combine.c vec.c $(LIBCSAPP)
	$(MULTIRUN) -c ./isbench > $(RESULTS)/isb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/isb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/isb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/isb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/isb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

ipbench: $(LIBCSAPP)   vec.h combine.h combine.c benchmark.c vec.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DPROD -DINT -o ipbench benchmark.c combine.c vec.c $(LIBCSAPP) 
	$(MULTIRUN) -c  ./ipbench > $(RESULTS)/ipb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/ipb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/ipb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/ipb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/ipb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

lsbench:   vec.h combine.h combine.c benchmark.c vec.c $(LIBCSAPP)
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DLONG -o lsbench benchmark.c combine.c vec.c $(LIBCSAPP)
	$(MULTIRUN) -c ./lsbench > $(RESULTS)/lsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/lsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/lsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/lsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/lsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

lpbench: $(LIBCSAPP)   vec.h combine.h combine.c benchmark.c vec.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DPROD -DLONG -o lpbench benchmark.c combine.c vec.c $(LIBCSAPP) 
	$(MULTIRUN) -c  ./lpbench > $(RESULTS)/lpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/lpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/lpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/lpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/lpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

fsbench:   vec.h combine.h combine.c benchmark.c vec.c $(LIBCSAPP)
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DFLOAT -o fsbench benchmark.c combine.c vec.c $(LIBCSAPP)
	$(MULTIRUN) -c ./fsbench > $(RESULTS)/fsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/fsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/fsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/fsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/fsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

fpbench: $(LIBCSAPP)   vec.h combine.h combine.c benchmark.c vec.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DPROD -DFLOAT -o fpbench benchmark.c combine.c vec.c $(LIBCSAPP) 
	$(MULTIRUN) -c  ./fpbench > $(RESULTS)/fpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/fpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/fpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/fpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/fpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

dsbench:   vec.h combine.h combine.c benchmark.c vec.c $(LIBCSAPP)
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DDOUBLE -o dsbench benchmark.c combine.c vec.c $(LIBCSAPP)
	$(MULTIRUN) -c ./dsbench > $(RESULTS)/dsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/dsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/dsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/dsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/dsb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab

dpbench: $(LIBCSAPP)   vec.h combine.h combine.c benchmark.c vec.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DPROD -DDOUBLE -o dpbench benchmark.c combine.c vec.c  $(LIBCSAPP) 
	$(MULTIRUN) -c ./dpbench > $(RESULTS)/dpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(BXTR) < $(RESULTS)/dpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/dpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).tab
	$(VXTR) < $(RESULTS)/dpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt > $(RESULTS)/dpb-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).vtab


isb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DSUM -DINT -m64 -S combine.c -o isb-O1.s
	$(GETASM) < isb-O1.s > isb-O1.64s
	cp -p combine.c isb-O1.c

ipb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DPROD -DINT -m64 -S combine.c -o ipb-O1.s
	$(GETASM) < ipb-O1.s > ipb-O1.64s
	cp -p combine.c ipb-O1.c

lsb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DSUM -DLONG -m64 -S combine.c -o lsb-O1.s
	$(GETASM) < lsb-O1.s > lsb-O1.64s
	cp -p combine.c lsb-O1.c

lpb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DPROD -DLONG -m64 -S combine.c -o lpb-O1.s
	$(GETASM) < lpb-O1.s > lpb-O1.64s
	cp -p combine.c lpb-O1.c

fsb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DSUM -DFLOAT -m64 -S combine.c -o fsb-O1.s
	$(GETASM) < fsb-O1.s > fsb-O1.64s
	cp -p combine.c fsb-O1.c

fpb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DPROD -DFLOAT -m64 -S combine.c -o fpb-O1.s
	$(GETASM) < fpb-O1.s > fpb-O1.64s
	cp -p combine.c fpb-O1.c

dsb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DSUM -DDOUBLE -m64 -S combine.c -o dsb-O1.s
	$(GETASM) < dsb-O1.s > dsb-O1.64s
	cp -p combine.c dsb-O1.c

dpb-O1.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O1 -DPROD -DDOUBLE -m64 -S combine.c -o dpb-O1.s
	$(GETASM) < dpb-O1.s > dpb-O1.64s
	cp -p combine.c dpb-O1.c

isb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DSUM -DINT -m64 -S combine.c -o isb-O2.s
	$(GETASM) < isb-O2.s > isb-O2.64s
	cp -p combine.c isb-O2.c

ipb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DPROD -DINT -m64 -S combine.c -o ipb-O2.s
	$(GETASM) < ipb-O2.s > ipb-O2.64s
	cp -p combine.c ipb-O2.c

lsb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DSUM -DLONG -m64 -S combine.c -o lsb-O2.s
	$(GETASM) < lsb-O2.s > lsb-O2.64s
	cp -p combine.c lsb-O2.c

lpb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DPROD -DLONG -m64 -S combine.c -o lpb-O2.s
	$(GETASM) < lpb-O2.s > lpb-O2.64s
	cp -p combine.c lpb-O2.c

fsb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DSUM -DFLOAT -m64 -S combine.c -o fsb-O2.s
	$(GETASM) < fsb-O2.s > fsb-O2.64s
	cp -p combine.c fsb-O2.c

fpb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DPROD -DFLOAT -m64 -S combine.c -o fpb-O2.s
	$(GETASM) < fpb-O2.s > fpb-O2.64s
	cp -p combine.c fpb-O2.c

dsb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DSUM -DDOUBLE -m64 -S combine.c -o dsb-O2.s
	$(GETASM) < dsb-O2.s > dsb-O2.64s
	cp -p combine.c dsb-O2.c

dpb-O2.64s: vec.h combine.h combine.c
	$(CC) $(MCFLAGS) -O2 -DPROD -DDOUBLE -m64 -S combine.c -o dpb-O2.s
	$(GETASM) < dpb-O2.s > dpb-O2.64s
	cp -p combine.c dpb-O2.c

tabulate: isbench dpbench
	$(TABULATE) -w $(WSIZE) -d $(RESULTS) -m $(MACHINE)-O$(OPTLEVEL) > $(RESULTS)/summary-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt


bench-ncpe:	 $(LIBCSAPP)   vec.h combine.h combine.c benchmark-ncpe.c vec.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DLONG -DUNROLL_ONLY -DCNT=31 -o bench-ncpe31 benchmark-ncpe.c combine.c vec.c $(LIBCSAPP) 
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -DSUM -DLONG -DUNROLL_ONLY -DCNT=8192 -o bench-ncpe8192 benchmark-ncpe.c combine.c vec.c $(LIBCSAPP) 
	$(MULTIRUN) -c ./bench-ncpe31 > $(RESULTS)/ncpe-31-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(MULTIRUN) -c  ./bench-ncpe8192 > $(RESULTS)/ncpe-8192-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(TABULATE) -r ncpe-31:ncpe-8192 -w $(WSIZE) -d $(RESULTS) -m $(MACHINE)-O$(OPTLEVEL) > $(RESULTS)/summary-ncpe-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

div: div.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  div.c $(LIBCSAPP) -o div
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  -S div.c
	sleep 1 ; ./div > $(RESULTS)/div-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

lower: lower.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  lower.c $(LIBCSAPP) -o lower
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  -S lower.c

overhead: overhead.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  overhead.c $(LIBCSAPP) -o overhead

lower-bench: lower
	sleep 1 ; ./lower > $(RESULTS)/lower-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	sleep 1 ; ./lower 1 > $(RESULTS)/lower-exp-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

dmult: dmult.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  dmult.c $(LIBCSAPP) -o dmult
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  -S dmult.c
	sleep 1 ; ./dmult > $(RESULTS)/dmult-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

mem: mem.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) mem.c $(LIBCSAPP) -o mem
	$(CC) $(CFLAGS)   -O$(OPTLEVEL) -S mem.c
	$(GETASM) < mem.s > mem.$(WSIZE)s
	sleep 1 ; ./mem > $(RESULTS)/mem-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

list: list.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  list.c $(LIBCSAPP) -o list
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  -S list.c
	$(GETASM) < list.s > list.$(WSIZE)s
	sleep 1 ; ./list > $(RESULTS)/list-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

fact: fact.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  fact.c $(LIBCSAPP) -o fact
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  -S fact.c
	$(GETASM) < fact.s > fact.$(WSIZE)s

fact-opt: fact.c
	$(CC) -Wall -O$(OPTLEVEL) -I. -I$(INC) -lrt  fact.c $(LIBCSAPP) -o fact-opt
	$(CC) -Wall -O$(OPTLEVEL) -I. -I$(INC) -S fact.c -o fact-opt.s
	$(GETASM) < fact-opt.s > fact-opt.$(WSIZE)s

test_cpe: test_cpe.c $(LIBCSAPP)
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  test_cpe.c $(LIBCSAPP) -o test_cpe
	sleep 1 ; ./test_cpe -r -l 200 -s 30 -b 0.2 > $(RESULTS)/cpe-u1-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	sleep 1 ; ./test_cpe -r -u -l 200 -s 30 -b 0.2 > $(RESULTS)/cpe-u2-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt

test_cpe.64s: test_cpe.c
	$(CC) $(MCFLAGS) -O$(OPTLEVEL) -m64 -S test_cpe.c 
	$(GETASM) < test_cpe.s > test_cpe.64s

cond-eg: $(LIBCSAPP) cond-eg.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL) cond-eg.c $(LIBCSAPP) -o cond-eg
	./cond-eg > $(RESULTS)/cond-eg-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -S cond-eg.c 
	$(GETASM) < cond-eg.s > cond-eg.$(WSIZE)s

merge: $(LIBCSAPP) merge.c
	$(CC) $(CFLAGS)  -O$(OPTLEVEL) merge.c $(LIBCSAPP) -o merge
	sleep 1 ; ./merge > $(RESULTS)/merge-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(CC) $(CFLAGS)  -O$(OPTLEVEL) -S merge.c 
	$(GETASM) < merge.s > merge.$(WSIZE)s

copy: $(LIBCSAPP) copy.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  copy.c $(LIBCSAPP) -o copy
	sleep 1 ; ./copy > $(RESULTS)/copy-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -S copy.c 
	$(GETASM) < copy.s > copy.$(WSIZE)s

opt-meas: $(LIBCSAPP) opt-meas.c
	$(CC) $(CFLAGS) -O$(OPTLEVEL)  opt-meas.c $(LIBCSAPP) -o opt-meas
	sleep 1 ; ./opt-meas > $(RESULTS)/opt-meas-$(MACHINE)-O$(OPTLEVEL)-$(WSIZE).txt
	$(CC) $(CFLAGS) -O$(OPTLEVEL) -S opt-meas.c 
	$(GETASM) < opt-meas.s > opt-meas.$(WSIZE)s

dictionary: dictionary.c options.c
	$(CC) $(CFLAGS) -O$(GOPTLEVEL) dictionary.c options.c -o dictionary
	$(CC) $(CFLAGS) -O$(GOPTLEVEL) $(GFLAGS) dictionary.c options.c -o dictionary-pg
	$(CC) $(CFLAGS) -O$(GOPTLEVEL) -S dictionary.c
	$(GETASM) < dictionary.s > dictionary.$(WSIZE)s

copy2d: copy2d.c $(LIBCSAPP)
	$(CC) -O2 -g -I$(INC) copy2d.c $(LIBCSAPP) -lrt -o copy2d

profile-eg.tar:
	(cd profile-eg; make tar)

dist: profile-eg.tar profile-eg/README.profile-eg
	cp -p profile-eg.tar $(WEBDIR)
	cp -p profile-eg/README.profile-eg $(WEBDIR)

clean:
	rm -f $(PROGS) *.o *~ *.s *.exe
	(cd profile-eg; make clean)



