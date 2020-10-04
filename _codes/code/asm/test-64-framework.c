/* Tests of semantics of functions that generate 64-bit values in x86-64
   Actual functions are in accompanying .s file
*/

#include <stdio.h>

typedef long int (*b2qfun)(unsigned char b);

long movsbl(unsigned char b);

long movzbl(unsigned char b);

long addl(unsigned char b);

long addb(unsigned char b);

long movi(unsigned char b);

void show_val(int x) {
    unsigned byte = x & 0xFF;
    int sbyte = ((signed char) byte << 24) >> 24;

    printf("Byte value.  Unsigned = %d, signed = %d, hex = 0x%x\n", byte, sbyte, byte);
    long movsblval = movsbl(byte);
    printf("movsbl = %ld (0x%lx)\n", movsblval, movsblval);
    long movzblval = movzbl(byte);
    printf("movzbl = %ld (0x%lx)\n", movzblval, movzblval);
    long addlval = addl(byte);
    printf("addl = %ld (0x%lx)\n", addlval, addlval);
    long addbval = addb(byte);
    printf("addb = %ld (0x%lx)\n", addbval, addbval);
    long movival = movi(byte);
    printf("movi = %ld (0x%lx)\n", movival, movival);
}

int main(int argc, char *argv[]) {
    int i;
    for (i = 1; i < argc; i++)
	show_val(atoi(argv[i]));
}
