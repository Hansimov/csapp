#include "cpy_opt.h"

#ifdef WIN32
#include <stdlib.h>
#include <windows.h>
#include "gettiment.h"
#define gettime getcounter

#else
#ifdef PENTIUMCOUNTER
#include "p5tsc.h"
#define gettime rdtsc
#else
#ifdef ALPHACOUNTER
#include "gettimealpha.h"
#define gettime getclock
#else
#include "gettime.h"
#define gettime gettimeus
#endif /* ALPHACOUNTER */
#endif /* PENTIUMCOUNTER */
#endif /* WIN32 */

double u;

/* we don't do much unrolling - not that much registers on x86... */

/* load test (with mmx summing to be somewhat fair against unoptimized version */

int cpy_lsopt(double* a,int l,int mx,int it)
{
	long nn;
	uint32 hi0, lo0, hi1, lo1;
	nn=mx/l;
	gettime(&hi0, &lo0);
	{
		double *ay,*ax,*bx,*cx;
		double u0=0,u1=0;
		int m,i,j,k;

		for (k=0; k<it; k++) {
			ay=a;
			u0=0; u1=0;
			for (j=0; j<l; j++) {
				i=0;
				ax=ay;
				m=l;
				bx=ay+m;
				m=m+l;
				cx=ay+m;
				m=m+l;
				while (i<=nn-3) {
					/* that addition doesn't make much sense, but we don't care about the result... */
					__asm__ __volatile__("
						movq		(%0), %%mm2
						paddd		%%mm2, %%mm0
						movq		(%1), %%mm3
						paddd		%%mm3, %%mm1
						movq		(%2), %%mm4
						paddd		%%mm4, %%mm0"
					:
					: "r" (ax), "r" (bx), "r" (cx), "f" (u0), "f" (u1)
					: "st", "st(1)", "st(2)", "st(3)", "st(4)"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0", "mm1", "mm2", "mm3", "mm4"
#endif
					);
					i=i+3;
					ax=ax+m;
					bx=bx+m;
					cx=cx+m;
				}
				while (i<=nn-1) {
					__asm__ __volatile__("
						movq		(%0), %%mm2
						paddd		%%mm2, %%mm0"
					:
					: "r" (ax), "f" (u0)
					: "st", "st(1)", "st(2)"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0", "mm1", "mm2"
#endif
					);
					i=i+1;
					ax=ax+l;
				}
				ay++;
			}
		}
		__asm__ __volatile__("emms");
		u=u0+u1;
	}
	gettime(&hi1, &lo1);
	return subtract64(hi0,lo0,hi1,lo1);
}

/* const store test */
int cpy_vsopt(double* a,int l,int mx,int it)
{
	long nn;
	uint32 hi0, lo0, hi1, lo1;

	nn=mx/l;
	gettime(&hi0, &lo0);
	{
		double *ay,*ax,*bx;
		double u0;
		int m,i,j,k;

		for (k=0; k<it; k++) {
			ay=a;
			u0=0;
			for (j=0; j<l; j++) {
				i=0;
				ax=ay;
				m=l;
				bx=ay+m;
				m=m+l;
				while (i<=nn-2) {
				/* we try to store a float zero value. Not sure if it really works, it should
				not be assumed that the floating point register value is preserved and that gcc is
				happy about it. But it doesn't really matter here what is stored */
					__asm__ __volatile__("
						movntq	%%mm0, (%0)
						movntq	%%mm0, (%1) "
					:
					: "r" (ax), "r" (bx), "f" (u0)
					: "memory", "st", "st(1)"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0", "mm1"
#endif
					);
					i=i+2;
					ax=ax+m;
					bx=bx+m;
				}
				if (i<=nn-1) {
					__asm__ __volatile__("
						movntq	%%mm0, (%0) "
					:
					: "r" (ax), "f" (u0)
					: "memory", "st"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0"
#endif
					);
					i=i+1;
					ax=ax+l;
				}
				ay++;
			}
			__asm__ __volatile__("sfence");
		}
	__asm__ __volatile__("emms");
	}
	gettime(&hi1, &lo1);
	return subtract64(hi0,lo0,hi1,lo1);
}


/* load copy test (strided load, contiguous store) */
int cpy_lcopt(double* a,double* c,int l,int mx,int it)
{
	long nn;
	uint32 hi0, lo0, hi1, lo1;

	nn=mx/l;
	gettime(&hi0, &lo0);
	{
		double *ay,*cy;
		double *ax,*bx;
		int m,i,j,k;

		for (k=0; k<it; k++) {
			ay=a;cy=c;
			for (j=0; j<l; j++) {
				i=0;
				ax=ay;
				m=l;
				bx=ay+m;
				m=m+l;
				while (i<=nn-2) {
					__asm__ __volatile__("
						movq		(%1), %%mm0
						movq		(%2), %%mm1
						movntq	%%mm0, (%0)
						movntq	%%mm1, 8(%0) "
					:
					: "r" (cy), "r" (ax), "r" (bx)
					: "st", "st(1)"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0", "mm1"
#endif
					);
/*
					*cy = *ax;
					*(cy+1) = *bx;*/
					i=i+2;
					ax=ax+m;
					bx=bx+m;
					cy=cy+2;
				}
				if (i<=nn-1) {
					__asm__ __volatile__("
						movq		(%1), %%mm0
						movntq	%%mm0, (%0) "
					:
					: "r" (cy), "r" (ax)
					: "st"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0"
#endif
					);
					i=i+1;
					ax=ax+l;
					cy=cy+1;
				}
				ay++;
			}
			__asm__ __volatile__("sfence");
		}
		__asm__ __volatile__("emms");
	}
	gettime(&hi1, &lo1);
	return subtract64(hi0,lo0,hi1,lo1);
}


/* copy store test (contiguous load, strided store) */
int cpy_csopt(double* a,double* c,int l,int mx,int it)
{
	long nn;
	uint32 hi0, lo0, hi1, lo1;
	nn=mx/l;
	gettime(&hi0, &lo0);
	{
		double *ay,*cy;
		double *ax,*bx;
		int m,i,j,k;
		for (k=0; k<it; k++) {
			ay=a;cy=c;
			for (j=0; j<l; j++) {
				i=0;
				ax=ay;
				m=l;
				bx=ay+m;
				m=m+l;
				while (i<=nn-2) {
					__asm__ __volatile__("
						movq		(%0), %%mm0
						movq		8(%0), %%mm1
						movntq	%%mm0, (%1)
						movntq	%%mm1, (%2) "
					:
					: "r" (cy), "r" (ax), "r" (bx)
					: "st", "st(1)"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0", "mm1"
#endif
					);
					ax=ax+m;
					bx=bx+m;
					cy=cy+2;
					i=i+2;
				}
				if (i<=nn-1) {
					__asm__ __volatile__("
						movq		(%0), %%mm0
						movntq	%%mm0, (%1)"
					:
					: "r" (cy), "r" (ax)
					: "st"
#if (__GNUC__ >= 3) || (__GNUC__ == 2 && __GNUC_MINOR__ >= 96)
					, "mm0"
#endif
					);
					ax=ax+l;
					cy=cy+1;
					i=i+1;
				}
				ay++;
			}
			__asm__ __volatile__("sfence");
		}
		__asm__ __volatile__("emms");
	}
	gettime(&hi1, &lo1);
	return subtract64(hi0,lo0,hi1,lo1);
}


