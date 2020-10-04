/* Condition code setting */

int x, y;

typedef long data_t;

#define COMP <

/* $begin 110-cc-c */
int comp(data_t a, data_t b) {
    return a COMP b;
}
/* $end 110-cc-c */

int ilt(int a, int b) {
    return a < b;
}



int bge(short a, short b) {
    return a >= b;
}


int ucle(unsigned char a, unsigned char b) {
    return a <= b;
}


int lieq(long a, long b) {
    return a == b;
}

int ulieq(unsigned long a, unsigned long b) {
    return a == b;
}

int peq(char *a, char *b) {
    return a == b;
}


int gt(unsigned long a, unsigned long b) {
    return a > b;
}

#define TEST !=

/* $begin 110-cc2-c */
int test(data_t a) {
    return a TEST 0;
}
/* $end 110-cc2-c */

int test_lige(long a) {
    return a >= 0;
}

int test_wz(short a) {
    return a == 0;
}

int test_uwz(unsigned short a) {
    return a == 0;
}

int test_cgt(char a) {
    return a > 0;
}

int test_ile(int a) {
    return a <= 0;
}
