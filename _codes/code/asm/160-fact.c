/* Loop illustration using different computations of factorial */

/* $begin 160-fact_do-c */
long fact_do(long n)
{
    long result = 1;
    do {
	result *= n;
	n = n-1;
    } while (n > 1);
    return result;
}
/* $end 160-fact_do-c */

/* $begin 160-fact_while-c */
long fact_while(long n)
{
    long result = 1;
    while (n > 1) {
	result *= n;
	n = n-1;
    }
    return result;
}
/* $end 160-fact_while-c */

/* $begin 160-fact_for-c */
long fact_for(long n)
{
    long i;
    long result = 1;
    for (i = 2; i <= n; i++)
	result *= i;
    return result;
}
/* $end 160-fact_for-c */

/* $begin 160-fact_for_while-c */
long fact_for_while(long n)
{
    long i = 2;
    long result = 1;
    while (i <= n) {
	result *= i;
	i++;
    }
    return result;
}
/* $end 160-fact_for_while-c */

/* $begin 160-fact_do_goto-c */
long fact_do_goto(long n)
{
    long result = 1;
 loop: 
    result *= n;
    n = n-1;
    if (n > 1)
	goto loop;
    return result;
}
/* $end 160-fact_do_goto-c */

/* $begin 160-fact_while_jm_goto-c */
long fact_while_jm_goto(long n)
{
    long result = 1;
    goto test;
 loop:
    result *= n;
    n = n-1;
 test:
    if (n > 1)
	goto loop;
    return result;
}
/* $end 160-fact_while_jm_goto-c */

/* $begin 160-fact_while_gd_goto-c */
long fact_while_gd_goto(long n)
{
    long result = 1;
    if (n <= 1)
	goto done;
 loop:
    result *= n;
    n = n-1;
    if (n != 1)
	goto loop;
 done:
    return result;
}
/* $end 160-fact_while_gd_goto-c */


/* $begin 160-fact_for_jm_goto-c */
long fact_for_jm_goto(long n)
{
    long i = 2;
    long result = 1;
    goto test;
 loop:
    result *= i;
    i++;
 test:
    if (i <= n)
	goto loop;
    return result;
}
/* $end 160-fact_for_jm_goto-c */

/* $begin 160-fact_for_gd_goto-c */
long fact_for_gd_goto(long n)
{
    long i = 2;
    long result = 1;
    if (n <= 1)
	goto done;
 loop:
    result *= i;
    i++;
    if (i <= n)
	goto loop;
 done:
    return result;
}
/* $end 160-fact_for_gd_goto-c */

/* $begin 160-rfact-c */
long rfact(long n)
{
    long result;
    if (n <= 1)
	result = 1;
    else
        result = n * rfact(n-1);
    return result;
}
/* $end 160-rfact-c */
