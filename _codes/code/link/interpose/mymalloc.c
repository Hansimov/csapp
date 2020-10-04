/* 
 * mymalloc.c - Examples of run-time, link-time, and compile-time
 *              library interpositioning.
 */

/*
 * Run-time interpositioning of malloc and free based 
 * on the dynamic linker's (ld-linux.so) LD_PRELOAD mechanism
 * 
 * Example (Assume a.out calls malloc and free):
 *   linux> gcc -Wall -DRUNTIME -shared -fpic -o mymalloc.so mymalloc.c -ldl
 *
 *   bash> (LD_PRELOAD="./mymalloc.so" ./a.out)	
 *   ...or 
 *   tcsh> (setenv LD_PRELOAD "./mymalloc.so"; ./a.out; unsetenv LD_PRELOAD)
 */
/* $begin interposer */
#ifdef RUNTIME
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

/* malloc wrapper function */
void *malloc(size_t size)
{
    void *(*mallocp)(size_t size);
    char *error;

    mallocp = dlsym(RTLD_NEXT, "malloc"); /* Get address of libc malloc */
    if ((error = dlerror()) != NULL) {
        fputs(error, stderr);
        exit(1);
    }
    char *ptr = mallocp(size); /* Call libc malloc */
    printf("malloc(%d) = %p\n", (int)size, ptr);
    return ptr;
}

/* free wrapper function */
void free(void *ptr)
{
    void (*freep)(void *) = NULL;
    char *error;

    if (!ptr)
        return;

    freep = dlsym(RTLD_NEXT, "free"); /* Get address of libc free */
    if ((error = dlerror()) != NULL) {
        fputs(error, stderr);
        exit(1);
    }
    freep(ptr); /* Call libc free */
    printf("free(%p)\n", ptr);
}
#endif
/* $end interposer */

/* 
 * Link-time interposition of malloc and free using the static
 * linker's (ld) "--wrap symbol" flag.
 * 
 * Compile the executable using "-Wl,--wrap,malloc -Wl,--wrap,free".
 * This tells the linker to resolve references to malloc as
 * __wrap_malloc, free as __wrap_free, __real_malloc as malloc, and
 * __real_free as free.
 */
/* $begin interposel */
#ifdef LINKTIME
#include <stdio.h>

void *__real_malloc(size_t size);
void __real_free(void *ptr);

/* malloc wrapper function */
void *__wrap_malloc(size_t size)
{
    void *ptr = __real_malloc(size); /* Call libc malloc */
    printf("malloc(%d) = %p\n", (int)size, ptr);
    return ptr;
}

/* free wrapper function */
void __wrap_free(void *ptr)
{
    __real_free(ptr); /* Call libc free */
    printf("free(%p)\n", ptr);
}
#endif
/* $end interposel */

/*
 * Compile-time interpositioning of malloc and free using the C
 * preprocessor. A local malloc.h file defines malloc and free as
 * wrappers mymalloc and myfree respectively.
 */
/* $begin interposec */
#ifdef COMPILETIME
#include <stdio.h>
#include <malloc.h>

/* malloc wrapper function */
void *mymalloc(size_t size)
{
    void *ptr = malloc(size); 
    printf("malloc(%d)=%p\n", 
           (int)size, ptr); 
    return ptr;
} 

/* free wrapper function */
void myfree(void *ptr)
{
    free(ptr); 
    printf("free(%p)\n", ptr); 
}
#endif
/* $end interposec */
