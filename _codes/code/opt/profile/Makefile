DICTPG = ../dictionary-pg
DICT = ../dictionary

GPFLAGS = -b

MFILE = moby.txt
SFILE = shakespeare.txt

SIZE = 1021
#BSIZE = 10007
BSIZE = 199999

all: stable1.txt stable2.txt


# Shakespeare words
sprof1-1.txt: $(DICT) $(DICT-PG)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > srun1-1.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 1 > /dev/null
	mv gmon.out srun1-1.out
	gprof $(GPFLAGS) $(DICTPG) srun1-1.out > sprof1-1.txt
	rm -f srun1-1.out

sprof1-2.txt: $(DICT) $(DICT-PG)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > srun1-2.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 1 > /dev/null
	mv gmon.out srun1-2.out
	gprof $(GPFLAGS) $(DICTPG) srun1-2.out > sprof1-2.txt
	rm -f srun1-2.out

sprof1-3.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > srun1-3.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 1 > /dev/null
	mv gmon.out srun1-3.out
	gprof $(GPFLAGS) $(DICTPG) srun1-3.out > sprof1-3.txt
	rm -f srun1-3.out

sprof1-4.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-4.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-4.out
	gprof $(GPFLAGS) $(DICTPG) srun1-4.out > sprof1-4.txt
	rm -f srun1-4.out

sprof1-5.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-5.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-5.out
	gprof $(GPFLAGS) $(DICTPG) srun1-5.out > sprof1-5.txt
	rm -f srun1-5.out

sprof1-6.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > srun1-6.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-6.out
	gprof $(GPFLAGS) $(DICTPG) srun1-6.out > sprof1-6.txt
	rm -f srun1-6.out

sprof1-7.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > srun1-7.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 1 > /dev/null
	mv gmon.out srun1-7.out
	gprof $(GPFLAGS) $(DICTPG) srun1-7.out > sprof1-7.txt
	rm -f srun1-7.out

stable1.txt: sprof1-1.txt sprof1-2.txt sprof1-3.txt sprof1-4.txt sprof1-5.txt sprof1-6.txt sprof1-7.txt format.pl
	./format.pl -c s -n 1 > stable1.txt

# Shakespeare bigrams
sprof2-1.txt: $(DICT) $(DICT-PG)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > srun2-1.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -ngram 2 > /dev/null
	mv gmon.out srun2-1.out
	gprof $(GPFLAGS) $(DICTPG) srun2-1.out > sprof2-1.txt
	rm -f srun2-1.out

sprof2-2.txt: $(DICT) $(DICT-PG)	
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > srun2-2.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -ngram 2 > /dev/null
	mv gmon.out srun2-2.out
	gprof $(GPFLAGS) $(DICTPG) srun2-2.out > sprof2-2.txt
	rm -f srun2-2.out

sprof2-3.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > srun2-3.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 1 -ngram 2 > /dev/null
	mv gmon.out srun2-3.out
	gprof $(GPFLAGS) $(DICTPG) srun2-3.out > sprof2-3.txt
	rm -f srun2-3.out

sprof2-4.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-4.txt
	$(DICTPG) -file $(SFILE) -size $(SIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-4.out
	gprof $(GPFLAGS) $(DICTPG) srun2-4.out > sprof2-4.txt
	rm -f srun2-4.out

sprof2-5.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-5.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 1 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-5.out
	gprof $(GPFLAGS) $(DICTPG) srun2-5.out > sprof2-5.txt
	rm -f srun2-5.out

sprof2-6.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > srun2-6.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-6.out
	gprof $(GPFLAGS) $(DICTPG) srun2-6.out > sprof2-6.txt
	rm -f srun2-6.out

sprof2-7.txt: $(DICT) $(DICT-PG)
	$(DICT) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > srun2-7.txt
	$(DICTPG) -file $(SFILE) -size $(BSIZE) -hash 2 -verb 10 -quick 1 -lower 1 -find 2 -ngram 2 > /dev/null
	mv gmon.out srun2-7.out
	gprof $(GPFLAGS) $(DICTPG) srun2-7.out > sprof2-7.txt
	rm -f srun2-7.out

stable2.txt: sprof2-1.txt sprof2-2.txt sprof2-3.txt sprof2-4.txt sprof2-5.txt sprof2-6.txt sprof2-7.txt format.pl
	./format.pl -c s -n 2 > stable2.txt

clean:
	rm -f *run*.out *run*.txt *prof*.txt
