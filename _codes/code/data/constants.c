#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <getopt.h>
#include <inttypes.h>

#define TMIN INT_MIN

#define TMIN_DEC -2147483648

#define TMIN_HEX 0x80000000

#define STMIN_DEC "-2147483648"

#define STMIN_HEX "0x80000000"

/* Different C dialects */
typedef enum { GCC, C89, C99, C11 } lang_t;

char *langs[4] = {"GCC", "C89", "C99", "C11"};

/* This can be overridden  by command line flag */
#ifndef LANG
#define LANG GCC
#endif

#define COMP_ZERO(x) ((x) < 0 ? "<" : (x) > 0 ? ">" : "=")
#define COMP_TMIN(x) ((x) < TMIN ? "<" : (x) > TMIN ? ">" : "=")
#define TWICE(x) (2*(x))

char *comp_zero(int x)
{
    return COMP_ZERO(x);
}

char *comp_tmin(int x)
{
    return COMP_TMIN(x);
}

int main(int argc, char *argv[])
{
    int terse_mode = 0;
    int print_header = 0;
    int word_size = 8*sizeof(long);
    char *dialect = langs[LANG];
    int64_t tmin_dec_val = (int64_t) TMIN_DEC;
    int64_t tmin_hex_val = (int64_t) TMIN_HEX;
    char * CZd = COMP_ZERO(TMIN_DEC);
    char * CZh = COMP_ZERO(TMIN_HEX);
    char * czd = comp_zero(TMIN_DEC);
    char * czh = comp_zero(TMIN_HEX);
    int64_t TWICEd = TWICE(TMIN_DEC);
    int64_t TWICEh = TWICE(TMIN_HEX);

    int c;
    while ((c = getopt(argc, argv, "th")) != -1) {
	switch (c) {
	case 't':
	    terse_mode = 1;
	    break;
	case 'h':
	    print_header = 1;
	    break;
	default:
	    break;
	}
    }

    if (terse_mode) {
	if (print_header) {
	    printf("word size:dialect:decimal:hex:CZ decimal: CZ hex:cz decimal:cz hex:2x decimal:2x hex\n");
	}
	printf("%d:%s:%lld:%lld:%s:%s:%s:%s:%lld:%lld\n",
	       word_size, dialect, tmin_dec_val, tmin_hex_val,
	       CZd, CZh, czd, czh,
	       TWICEd, TWICEh);
    } else {
	printf("Long word size = %d\n", (int) (8*sizeof(long)));
	printf("Dialect = %s\n", langs[LANG]);
	printf("    COMP_ZERO\n");
	printf("\t%s\t(0x%" PRIx64 ") %s 0\n", STMIN_DEC, (int64_t) TMIN_DEC, COMP_ZERO(TMIN_DEC));
	printf("\t%s\t(0x%" PRIx64 ") %s 0\n", STMIN_HEX, (int64_t) TMIN_HEX, COMP_ZERO(TMIN_HEX));

	printf("    COMP_TMIN\n");
	printf("\t%s\t(0x%" PRIx64 ") %s %s\n", STMIN_DEC, (int64_t) TMIN_DEC, COMP_TMIN(TMIN_DEC), STMIN_DEC);
	printf("\t%s\t(0x%" PRIx64 ") %s %s\n", STMIN_HEX, (int64_t) TMIN_HEX, COMP_TMIN(TMIN_HEX), STMIN_DEC);

	printf("    comp_zero\n");
	printf("\t%s\t(0x%" PRIx64 ") %s 0\n", STMIN_DEC, (int64_t) TMIN_DEC, comp_zero(TMIN_DEC));
	printf("\t%s\t(0x%" PRIx64 ") %s 0\n", STMIN_HEX, (int64_t) TMIN_HEX, comp_zero(TMIN_HEX));

	printf("    comp_tmin\n");
	printf("\t%s\t(0x%" PRIx64 ") %s %s\n", STMIN_DEC, (int64_t) TMIN_DEC, comp_tmin(TMIN_DEC), STMIN_DEC);
	printf("\t%s\t(0x%" PRIx64 ") %s %s\n", STMIN_HEX, (int64_t) TMIN_HEX, comp_tmin(TMIN_HEX), STMIN_DEC);

	printf("    TWICE\n");
	printf("\t2*%s\t(2*0x%" PRIx64 ") = %lld (0x%" PRIx64 ")\n", STMIN_DEC, (int64_t) TMIN_DEC, (int64_t) TWICE(TMIN_DEC), (int64_t) TWICE(TMIN_DEC));
	printf("\t2*%s\t(2*0x%" PRIx64 ") = %lld (0x%" PRIx64 ")\n", STMIN_HEX, (int64_t) TMIN_HEX, (int64_t) TWICE(TMIN_HEX), (int64_t) TWICE(TMIN_HEX));

	printf("\n");
    }
    return 0;
}
