/* Local malloc header file */
/* $begin mallocheader */
#define malloc(size) mymalloc(size)
#define free(ptr) myfree(ptr)

void *mymalloc(size_t size);
void myfree(void *ptr);
/* $end mallocheader */
