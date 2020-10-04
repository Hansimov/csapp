#ifdef FLOAT
typedef float data_t;
#define DATA_NAME "Float"
#endif

#ifdef DOUBLE
typedef double data_t;
#define DATA_NAME "Double"
#endif


#ifdef EXTEND
typedef long double data_t;
#define DATA_NAME "Extended"
#endif

#ifdef INT
typedef int data_t;
#define DATA_NAME "Integer"
#endif

#ifdef LONG
/* $begin typedefint */
typedef long data_t;
/* $end typedefint */ 
#define DATA_NAME "Long"
#endif

#ifdef CHAR
typedef char data_t;
#define DATA_NAME "Char"
#endif

#ifdef PROD
/* $begin operprod */
#define IDENT 1
#define OP  *
/* $end operprod */
#define OP_NAME "Product"
#else
#ifdef DIV
#define OP /
#define IDENT 1
#define OP_NAME "Divide"
#else
/* $begin operplus */
#define IDENT 0
#define OP  +
/* $end operplus */
#define OP_NAME "Sum"
#endif /* DIV */
#endif /* PROD */

#include "vec.h"

/* Declaration of a combining routine */
/* Source vector, destination location */ 
typedef void (*combiner)(vec_ptr, data_t *);

/* Add combining routine to list of programs to measure */
void add_combiner(combiner f, combiner fc, char *description);

/* Flag combiner for logging, giving bounds for fast and slow cases */
/* Can only log one combiner at a time */
void log_combiner(combiner f, double fast_cpe, double slow_cpe);

/* Called by main to register the set of transposition routines to benchmark */
void register_combiners(void);


