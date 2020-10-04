
/* Some referencing examples */
int proc(int *E, long int i) {
    return *(E+i-3);
}

int diff(int *E, unsigned int i) {
    return ((&E[i]-E) << 32) >= 0;
}
