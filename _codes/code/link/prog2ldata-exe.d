
prog2l:     file format elf64-x86-64
prog2l
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000004005e0

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr 0x0000000000400040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r-x
  INTERP off    0x0000000000000238 vaddr 0x0000000000400238 paddr 0x0000000000400238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr 0x0000000000400000 align 2**21
         filesz 0x00000000000008bc memsz 0x00000000000008bc flags r-x
    LOAD off    0x0000000000000de8 vaddr 0x0000000000600de8 paddr 0x0000000000600de8 align 2**21
         filesz 0x0000000000000250 memsz 0x0000000000000260 flags rw-
 DYNAMIC off    0x0000000000000e00 vaddr 0x0000000000600e00 paddr 0x0000000000600e00 align 2**3
         filesz 0x00000000000001e0 memsz 0x00000000000001e0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000400254 paddr 0x0000000000400254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x00000000000007f4 vaddr 0x00000000004007f4 paddr 0x00000000004007f4 align 2**2
         filesz 0x000000000000002c memsz 0x000000000000002c flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**3
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000de8 vaddr 0x0000000000600de8 paddr 0x0000000000600de8 align 2**0
         filesz 0x0000000000000218 memsz 0x0000000000000218 flags r--

Dynamic Section:
  NEEDED               ./libvector.so
  NEEDED               libc.so.6
  INIT                 0x0000000000400588
  FINI                 0x00000000004007d4
  INIT_ARRAY           0x0000000000600de8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000600df0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000400298
  STRTAB               0x0000000000400408
  SYMTAB               0x00000000004002d0
  STRSZ                0x00000000000000d5
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000600fe8
  PLTRELSZ             0x0000000000000048
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000400540
  RELA                 0x0000000000400528
  RELASZ               0x0000000000000018
  RELAENT              0x0000000000000018
  VERNEED              0x00000000004004f8
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000004004de

Version References:
  required from libc.so.6:
    0x09691974 0x00 03 GLIBC_2.3.4
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
 21 .got          00000008  0000000000600fe0  0000000000600fe0  00000fe0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000020  0000000000601018  0000000000601018  00001018  2**3
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
0000000000600fe0 l    d  .got	0000000000000000              .got
0000000000601018 l    d  .data	0000000000000000              .data
0000000000601018  w      .data	0000000000000000              data_start
0000000000601030 g     O .data	0000000000000008              x
0000000000601018 g       .data	0000000000000000              __data_start
0000000000601020 g     O .data	0000000000000000              .hidden __dso_handle
0000000000601028 g     O .data	0000000000000008              y
0000000000601038 g     O .data	0000000000000000              .hidden __TMC_END__


Contents of section .got:
 600fe0 00000000 00000000                    ........        
Contents of section .data:
 601018 00000000 00000000 00000000 00000000  ................
 601028 03000000 04000000 01000000 02000000  ................
