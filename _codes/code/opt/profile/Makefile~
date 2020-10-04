DICTPG = ../dictionary-pg
DICT = ../dictionary

GPFLAGS = -b

MFILE = moby.txt
SFILE = shakespeare.txt

CDIR = ../../../corpora
EFILE = $(CDIR)/europarl-v3-en.txt
HFILE = $(CDIR)/hansard.36.txt

SIZE = 1021
#BSIZE = 10007
BSIZE = 199999

all: stable1.txt stable2.txt htable1.txt htable2.txt


# Shakespeare words
sprof1-1.txt: $(DICT)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > srun1-1.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > /dev/null
	mv gmon.out srun1-1.out
	gprof $(GPFLAGS) $(DICTPG) srun1-1.out > sprof1-1.txt
	rm srun1-1.out

sprof1-2.txt: $(DICT)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > srun1-2.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > /dev/null
	mv gmon.out srun1-2.out
	gprof $(GPFLAGS) $(DICTPG) srun1-2.out > sprof1-2.txt
	rm srun1-2.out

sprof1-3.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > srun1-3.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > /dev/null
	mv gmon.out srun1-3.out
	gprof $(GPFLAGS) $(DICTPG) srun1-3.out > sprof1-3.txt
	rm srun1-3.out

sprof1-4.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-4.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-4.out
	gprof $(GPFLAGS) $(DICTPG) srun1-4.out > sprof1-4.txt
	rm srun1-4.out

sprof1-5.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-5.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-5.out
	gprof $(GPFLAGS) $(DICTPG) srun1-5.out > sprof1-5.txt
	rm srun1-5.out

sprof1-6.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-6.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-6.out
	gprof $(GPFLAGS) $(DICTPG) srun1-6.out > sprof1-6.txt
	rm srun1-6.out

sprof1-7.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > srun1-7.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-7.out
	gprof $(GPFLAGS) $(DICTPG) srun1-7.out > sprof1-7.txt
	rm srun1-7.out

stable1.txt: sprof1-1.txt sprof1-2.txt sprof1-3.txt sprof1-4.txt sprof1-5.txt sprof1-6.txt sprof1-7.txt format.pl
	./format.pl -c s -n 1 > stable1.txt

# Shakespeare bigrams
sprof2-1.txt: $(DICT)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > srun2-1.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > /dev/null
	mv gmon.out srun2-1.out
	gprof $(GPFLAGS) $(DICTPG) srun2-1.out > sprof2-1.txt
	rm srun2-1.out

sprof2-2.txt: $(DICT)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > srun2-2.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > /dev/null
	mv gmon.out srun2-2.out
	gprof $(GPFLAGS) $(DICTPG) srun2-2.out > sprof2-2.txt
	rm srun2-2.out

sprof2-3.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > srun2-3.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > /dev/null
	mv gmon.out srun2-3.out
	gprof $(GPFLAGS) $(DICTPG) srun2-3.out > sprof2-3.txt
	rm srun2-3.out

sprof2-4.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-4.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-4.out
	gprof $(GPFLAGS) $(DICTPG) srun2-4.out > sprof2-4.txt
	rm srun2-4.out

sprof2-5.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-5.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-5.out
	gprof $(GPFLAGS) $(DICTPG) srun2-5.out > sprof2-5.txt
	rm srun2-5.out

sprof2-6.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-6.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-6.out
	gprof $(GPFLAGS) $(DICTPG) srun2-6.out > sprof2-6.txt
	rm srun2-6.out

sprof2-7.txt: $(DICT)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > srun2-7.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-7.out
	gprof $(GPFLAGS) $(DICTPG) srun2-7.out > sprof2-7.txt
	rm srun2-7.out

stable2.txt: sprof2-1.txt sprof2-2.txt sprof2-3.txt sprof2-4.txt sprof2-5.txt sprof2-6.txt sprof2-7.txt format.pl
	./format.pl -c s -n 2 > stable2.txt

# Hansard words
hprof1-1.txt: $(DICT)	
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > hrun1-1.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > /dev/null
	mv gmon.out hrun1-1.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-1.out > hprof1-1.txt
	rm hrun1-1.out

hprof1-2.txt: $(DICT)	
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > hrun1-2.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > /dev/null
	mv gmon.out hrun1-2.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-2.out > hprof1-2.txt
	rm hrun1-2.out

hprof1-3.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > hrun1-3.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > /dev/null
	mv gmon.out hrun1-3.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-3.out > hprof1-3.txt
	rm hrun1-3.out

hprof1-4.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > hrun1-4.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out hrun1-4.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-4.out > hprof1-4.txt
	rm hrun1-4.out

hprof1-5.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > hrun1-5.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out hrun1-5.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-5.out > hprof1-5.txt
	rm hrun1-5.out

hprof1-6.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > hrun1-6.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out hrun1-6.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-6.out > hprof1-6.txt
	rm hrun1-6.out

hprof1-7.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > hrun1-7.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out hrun1-7.out
	gprof $(GPFLAGS) $(DICTPG) hrun1-7.out > hprof1-7.txt
	rm hrun1-7.out

htable1.txt: hprof1-1.txt hprof1-2.txt hprof1-3.txt hprof1-4.txt hprof1-5.txt hprof1-6.txt hprof1-7.txt format.pl
	./format.pl -c h -n 1 > htable1.txt

# Hansard bigrams
hprof2-1.txt: $(DICT)	
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > hrun2-1.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > /dev/null
	mv gmon.out hrun2-1.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-1.out > hprof2-1.txt
	rm hrun2-1.out

hprof2-2.txt: $(DICT)	
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > hrun2-2.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > /dev/null
	mv gmon.out hrun2-2.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-2.out > hprof2-2.txt
	rm hrun2-2.out

hprof2-3.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > hrun2-3.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > /dev/null
	mv gmon.out hrun2-3.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-3.out > hprof2-3.txt
	rm hrun2-3.out

hprof2-4.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > hrun2-4.txt
	$(DICTPG) -file $(HFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out hrun2-4.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-4.out > hprof2-4.txt
	rm hrun2-4.out

hprof2-5.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > hrun2-5.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out hrun2-5.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-5.out > hprof2-5.txt
	rm hrun2-5.out

hprof2-6.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > hrun2-6.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out hrun2-6.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-6.out > hprof2-6.txt
	rm hrun2-6.out

hprof2-7.txt: $(DICT)
	$(DICT) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > hrun2-7.txt
	$(DICTPG) -file $(HFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out hrun2-7.out
	gprof $(GPFLAGS) $(DICTPG) hrun2-7.out > hprof2-7.txt
	rm hrun2-7.out

htable2.txt: hprof2-1.txt hprof2-2.txt hprof2-3.txt hprof2-4.txt hprof2-5.txt hprof2-6.txt hprof2-7.txt format.pl
	./format.pl -c h -n 2 > htable2.txt

eprof7.txt: $(DICT) $(EFILE)
	$(DICT) -file $(EFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > erun7.txt
	$(DICTPG) -file $(EFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out erun1-7.out
	gprof $(GPFLAGS) $(DICTPG) erun1-7.out > eprof7.txt
	rm erun1-7.out

clean:
	rm -f *run*.out *run*.txt *prof*.txt
