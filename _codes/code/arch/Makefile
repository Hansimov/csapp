CFLAGS = -O1 -m64
ISADIR = ../../im/labs/archlab/src/misc
YAS = $(ISADIR)/yas
YIS = $(ISADIR)/yis

pushpoptest: pushpoptest.c pp.s
	$(CC) $(CFLAGS) -o pushpoptest pushpoptest.c pp.s
	cp -p pp.s pp.sa


.SUFFIXES: .c .s .o .ys .yo .yis .txt

.c.s:
	$(CC) $(CFLAGS) -S $*.c -o $*.s

.ys.yo:
	$(YAS) $*.ys

# Extracting code fragments
.yo.txt:
	egrep "\|   #|:[ a-f0-9]*\|" $*.yo | \
	perl -ne "s/:[ a-f0-9]+\|/:/; s/[ ]*\|[ ]*#/#/; print;" > $*.txt

.yo.yis: $(YIS)
	$(YIS) $*.yo > $*.yis

clean:
	rm -f *~ pushpoptest

