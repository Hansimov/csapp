/* Implementation of functions to generate and manipulate linked lists */
#include <stdlib.h>

typedef struct ELE list_ele_t, *list_ptr;

struct ELE {
    long value;
    list_ptr next;
};

list_ptr new_list_ele(long value) {
    list_ptr ele = (list_ptr) malloc(sizeof(list_ele_t));
    ele->value = value;
    ele->next = NULL;
    return ele;
}

list_ptr array_to_list_addtail(int *a, size_t n) {
    list_ptr result = NULL;
    list_ptr *tailp = &result;
    size_t i;
    for (i = 0; i < n; i++) {
	list_ptr ele = new_list_ele(a[i]);
	*tailp = ele;
	tailp = &ele->next;
    }
    return result;
}

list_ptr array_to_list_reverse(int *a, size_t n) {
    list_ptr result = NULL;
    size_t i;
    for (i = n-1; i < n; i--) {
	list_ptr ele = new_list_ele(a[i]);
	ele->next = result;
	result = ele;
    }
    return result;
}


list_ptr array_to_list_recurse(int *a, size_t n) {
    if (n == 0)
	return NULL;
    list_ptr rest = array_to_list_recurse(a+1, n-1);
    list_ptr ele = new_list_ele(a[0]);
    ele->next = rest;
    return ele;
}

void incr_ele(long *p) {
    *p = *p+1;
}

void incr_list(list_ptr ls) {
    while (ls) {
	incr_ele(&ls->value);
	ls = ls->next;
    }
}
