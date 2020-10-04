/* $begin mmheader */
/* $begin mallocinterface */
extern int mm_init(void);
extern void *mm_malloc (size_t size);
extern void mm_free (void *ptr);
/* $end mallocinterface */

extern void *mm_realloc(void *ptr, size_t size);
extern void *mm_calloc (size_t nmemb, size_t size);
extern void mm_checkheap(int verbose);
/* $end mmheader */
