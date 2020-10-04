CC = gcc

CSAPP_INC = ../../include
CSAPP_SRC = ../../src

CFLAGS = -Wall -O2 -I $(CSAPP_INC) -I .
LDLIBS = -lpthread

PROGS =	cpfile\

all: $(CSAPP_SRC)/csapp.o $(PROGS) 
$(PROGS): $(CSAPP_SRC)/csapp.o
$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h


test:
	xxd -p test1-nlf.txt; ./cpfile < test1-nlf.txt >out1-nlf.txt; xxd -p out1-nlf.txt
	xxd -p test2-nlf.txt; ./cpfile < test2-nlf.txt >out2-nlf.txt; xxd -p out2-nlf.txt
	xxd -p test3-nlf.txt; ./cpfile < test3-nlf.txt >out3-nlf.txt; xxd -p out3-nlf.txt
	xxd -p test4-nlf.txt;./cpfile < test4-nlf.txt >out4-nlf.txt; xxd -p out4-nlf.txt
	xxd -p test1.txt; ./cpfile < test1.txt >out1.txt; xxd -p out1.txt
	xxd -p test2.txt; ./cpfile < test2.txt >out2.txt; xxd -p out2.txt
	xxd -p test3.txt; ./cpfile < test3.txt >out3.txt; xxd -p out3.txt
	xxd -p test4.txt; ./cpfile < test4.txt >out4.txt; xxd -p out4.txt


clean:
	rm -f $(PROGS) *.o *~
