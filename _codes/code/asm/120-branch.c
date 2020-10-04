long loop(long x)
{
    while (x > 0) {
	x = x >> 1;
    }
    return x;
}

int main()
{
    return loop(-2);
}
