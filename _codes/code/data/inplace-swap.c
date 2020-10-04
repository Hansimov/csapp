#include <stdio.h>
#include <stdlib.h>

/* $begin inplace-swap-a */
/* $begin inplace-swap-b */
void inplace_swap(int *x, int *y) {
/* $end inplace-swap-b */
    *y = *x ^ *y;  /* Step 1 */ 
    *x = *x ^ *y;  /* Step 2 */ 
    *y = *x ^ *y;  /* Step 3 */ 
} 
/* $end inplace-swap-a */

void inplace_swap_b(int *x, int *y) {
/* $begin inplace-swap-b */
    *x = *x ^ *y;  /* Step 1 */ 
    *y = *x ^ *y;  /* Step 2 */ 
    *x = *x ^ *y;  /* Step 3 */ 
} 
/* $end inplace-swap-b */

/* $begin reverse-array */
void reverse_array(int a[], int cnt) {
    int first, last;
    for (first = 0, last = cnt-1;
	 first <= last; //line:data:prob:reverse
	 first++,last--)
        inplace_swap(&a[first], &a[last]);
}
/* $end reverse-array */


void fix_reverse_array(int a[], int cnt) {
    int first, last;
    for (first = 0, last = cnt-1;
	 first < last;
	 first++,last--)
        inplace_swap(&a[first], &a[last]);
}


int main(int argc, char *argv[]) {
  int *a = calloc(argc-1, sizeof(int));
  int cnt = argc-1;
  int i;
  for (i = 0; i < cnt; i++) {
    a[i] = atoi(argv[i+1]);
  }
  printf("First version:\n");
  printf("  Initially: a[0..%d] =", cnt-1);
  for (i = 0; i < cnt; i++)
    printf(" %d", a[i]);
  printf("\n");
  reverse_array(a, cnt);
  printf("  Finally:   a[0..%d] =", cnt-1);
  for (i = 0; i < cnt; i++)
    printf(" %d", a[i]);
  printf("\n");

  for (i = 0; i < cnt; i++) {
    a[i] = atoi(argv[i+1]);
  }
  printf("Second version:\n");
  printf("  Initially: a[0..%d] =", cnt-1);
  for (i = 0; i < cnt; i++)
    printf(" %d", a[i]);
  printf("\n");
  fix_reverse_array(a, cnt);
  printf("  Finally:   a[0..%d] =", cnt-1);
  for (i = 0; i < cnt; i++)
    printf(" %d", a[i]);
  printf("\n");
  return 0;
}
