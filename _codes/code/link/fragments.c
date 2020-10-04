/* pseudo-code */

#ifdef 0
/* $begin reloalg */
foreach section s {
    foreach relocation entry r {
        refptr = s + r.offset;  /* ptr to reference to be relocated */

        /* Relocate a PC-relative reference */
        if (r.type == R_X86_64_PC32) { 
            refaddr = ADDR(s) + r.offset; /* ref's run-time address */
            *refptr = (unsigned) (ADDR(r.symbol) + r.addend - refaddr);
	}

        /* Relocate an absolute reference */
        if (r.type == R_X86_64_32)   
            *refptr = (unsigned) (ADDR(r.symbol) + r.addend);
    }
}
/* $end reloalg */

/* $begin startupcode */
0x080480c0 <_start>:         /* Entry point in .text */
    call __libc_init_first   /* Startup code in .text */ 
    call _init               /* Startup code in .init */
    call atexit              /* Startup code in .text */
    call main                /* Application main routine */
    call _exit               /* Returns control to OS */
/* Control never reaches here */
/* $end startupcode */


#endif 
