/* $begin elfsymbol */
typedef struct { 
    int   name;      /* String table offset */ 
    char  type:4,    /* Function or data (4 bits) */ 
	  binding:4; /* Local or global (4 bits) */ 
    char  reserved;  /* Unused */  
    short section;   /* Section header index */
    long  value;     /* Section offset or absolute address */ 
    long  size;      /* Object size in bytes */ 
} Elf64_Symbol; 
/* $end elfsymbol */

/* $begin elfrelo */
typedef struct { 
    long offset;    /* Offset of the reference to relocate */ 
    long type:32,   /* Relocation type */ 
	 symbol:32; /* Symbol table index */ 
    long addend;    /* Constant part of relocation expression */
} Elf64_Rela; 
/* $end elfrelo */

