/* Benchmark of memory referencing */
#include <stdio.h>
#include <stdlib.h>
#include "fcyc.h"

#define MAXELE 10000

typedef struct ELE *list_ptr;

typedef struct ELE {
    long val;
    list_ptr next;
} list_rec;

list_rec block_alloc[MAXELE];

long sum_list(list_ptr ll)
{
    long sum = 0;
    while (ll) {
	sum += ll->val;
	ll = ll->next;
    }
    return sum;
}

list_ptr dynamic_head = NULL;
list_ptr static_head = NULL;

void init(long nele) {
    long i;
    for (i = 0; i < nele; i++) {
	/* Dynamic allocation */
	list_ptr ele = malloc(sizeof(list_rec));
	ele->val = i;
	ele->next = dynamic_head;
	dynamic_head = ele;
	/* Static allocation */
	ele = &block_alloc[i];
	ele->val = i;
	ele->next = static_head;
	static_head = ele;
    }
}
 
void test_list(long info[]) {
    long *resultp = &info[0];
    long use_static = info[1];
    list_ptr head = use_static ? static_head : dynamic_head;
    *resultp = sum_list(head);
}

int main(int argc, char *argv[]) {
    long info[2];
    long expected;
    long version;
    char *vname[2] = {"dynamic", "static"};
    double time, tpe;
    long nele = MAXELE;
    if (argc > 1)
	nele = atoi(argv[1]);
    expected = nele*(nele-1)/2;
    init(nele);
    for (version = 0; version <= 1; version++) {
	long sum;
	info[0] = 0;
	info[1] = version;
	test_list(info);
	sum = info[0];
	time = fcyc(test_list, info);
	tpe = time/nele;
	printf("N = %ld, Allocation: %s, expected=%ld, got=%ld, tpe=%.2f\n",
	       nele, vname[version], expected, sum, tpe);
    }
    return 0;
}
