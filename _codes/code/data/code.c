/* $begin sum-c */
int accum = 0;

int sum(int x, int y)
{
    int t = x + y;
    accum += t;
    return t;
}
/* $end sum-c */

/* Added to get nop at the end of sum */
int p(int x)
{
  return sum(x,x);
}

int main() {
    return 0;
}
