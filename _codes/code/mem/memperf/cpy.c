#include "cpy.h"

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

/* load test (with summing to circumvent compiler optimization) */
/* loop unrolled by 1 */
/* a: data array we are summing over */
/* l: stride */
/* mx: array size */
/* it: effiters */
int cpy_ls1(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;

  nn=mx/l; /* number of strided entries in the array */
  gettime(&hi0, &lo0);
  {
    double *ay,*ax;
    double u0=0;
    int i,j,k;

    for (k=0; k<it; k++) { /* iterations*/
      ay=a;
      u0=0;
      for (j=0; j<l; j++) { /* strides */
	i=0;
	ax=ay;
	while (i<=nn-1) {
	  i=i+1;
	  u0+=*ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
    u=u0;
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}


int cpy_ls2(double* a,int l,int mx,int it){
  long nn;
  uint32 hi0, lo0, hi1, lo1;

  nn=mx/l;
  gettime(&hi0, &lo0);
  {
    double *ay,*ax,*bx;
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
	while (i<=nn-2) {
	  i=i+2;
	  u0+=*ax;
	  ax=ax+m;
	  u1+=*bx;
	  bx=bx+m;
	}
	while (i<=nn-1) {
	  i=i+1;
	  u0+=*ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
    u=u0+u1;
  }
  gettime(&hi1, &lo1);    
  return subtract64(hi0,lo0,hi1,lo1);
}


int cpy_ls4(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l;
  gettime(&hi0, &lo0);
  {
    double *ay,*ax,*bx,*cx,*dx;
    double u0=0,u1=0,u2=0,u3=0;
    int m,m2,i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;
      u0=0; u1=0; u2=0; u3=0;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	m=l;
	bx=ay+m;
	m=m+l;
	m2=m;
	cx=ay+m;
	m=m+l;
	dx=ay+m;
	m=m+l;
	while (i<=nn-4) {
	  i=i+4;
	  u0 += *ax;
	  ax=ax+m;
	  u1 += *bx;
	  bx=bx+m;
	  u2 += *cx;
	  cx=cx+m;
	  u3 += *dx;
	  dx=dx+m;
	}
	while (i<=nn-2) {
	  i=i+2;
	  u0 += *ax;
	  ax=ax+m2;
	  u1 += *bx;
	  bx=bx+m2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  u0 += *ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
    u=u0+u1+u2+u3;
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_ls8(double *a,int l,int mx,int it)       
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      double *ay,*ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0=0,u1=0,u2=0,u3=0,u4=0,u5=0,u6=0,u7=0;
      int m,m2,m4,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;
	u0=0; u1=0; u2=0; u3=0; u4=0; u5=0; u6=0; u7=0;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m4=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l;
	  while (i<=nn-8) {
	    i=i+8;
	    u0 += *ax;
	    ax=ax+m;
	    u1 += *bx;
	    bx=bx+m;
	    u2 += *cx;
	    cx=cx+m;
	    u3 += *dx;
	    dx=dx+m;
	    u4 += *ex;
	    ex=ex+m;
	    u5 += *fx;
	    fx=fx+m;
	    u6 += *gx;
	    gx=gx+m;
	    u7 += *hx;
	    hx=hx+m;
	  }
	  while (i<=nn-4) {
	    i=i+4;
	    u0 += *ax;
	    ax=ax+m4;
	    u1 += *bx;
	    bx=bx+m4;
	    u2 += *cx;
	    cx=cx+m4;
	    u3 += *dx;
	    dx=dx+m4;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    u0 += *ax;
	    ax=ax+m2;
	    u1 += *bx;
	    bx=bx+m2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    u0 += *ax;
	    ax=ax+l;
	  }
	  ay++;
	}
      }
      u=u0+u1+u2+u3+u4+u5+u6+u7;
    }
    gettime(&hi1, &lo1);
  } else {
    gettime(&hi0, &lo0);
    {
      double *ay,*ax,*bx,*cx,*dx;
      double u0=0,u1=0,u2=0,u3=0;
      int m,m2,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;
	u0=0; u1=0; u2=0; u3=0;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  while (i<=nn-4) {
	    i=i+4;
	    u0 += *ax;
	    ax=ax+m;
	    u1 += *bx;
	    bx=bx+m;
	    u2 += *cx;
	    cx=cx+m;
	    u3 += *dx;
	    dx=dx+m;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    u0 += *ax;
	    ax=ax+m2;
	    u1 += *bx;
	    bx=bx+m2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    u0 += *ax;
	    ax=ax+l;
	  }
	  ay++;
	}
      }
      u=u0+u1+u2+u3;
    }
    gettime(&hi1, &lo1);
  }    
  return subtract64(hi0,lo0,hi1,lo1);
}



/* const store test */
int cpy_vs1(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0); 
  {
    double *ay,*ax;
    double u0;
    int i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;
      u0=0;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	while (i<=nn-1) {
	  i=i+1;
	  *ax=u0;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_vs2(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0); 
  {
    double *ay,*ax,*bx;
    double u0,u1;
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
	while (i<=nn-2) {
	  i=i+2;
	  *ax=u0;
	  ax=ax+m;
	  *bx=u0;
	  bx=bx+m;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *ax=u0;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_vs4(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0); 
  {
    double *ay,*ax,*bx,*cx,*dx;
    double u0,u1,u2,u3;
    int m,m2,i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;
      u0=0; u1=0; u2=0; u3=0;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	m=l;
	bx=ay+m;
	m=m+l;
	m2=m;
	cx=ay+m;
	m=m+l;
	dx=ay+m;
	m=m+l;
	while (i<=nn-4) {
	  i=i+4;
	  *ax=u0;
	  ax=ax+m;
	  *bx=u0;
	  bx=bx+m;
	  *cx=u0;
	  cx=cx+m;
	  *dx=u0;
	  dx=dx+m;
	}
	while (i<=nn-2) {
	  i=i+2;
	  *ax=u0;
	  ax=ax+m2;
	  *bx=u0;
	  bx=bx+m2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *ax=u0;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_vs8(double* a,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0); 
    {
      double *ay,*ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0,u1,u2,u3,u4,u5,u6,u7;
      int m,m2,m4,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;
	u0=0; u1=0; u2=0; u3=0; u4=0; u5=0; u6=0; u7=0;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m4=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  while (i<=nn-8) {
	    i=i+8;
	    *ax=u0;
	    ax=ax+m;
	    *bx=u0;
	    bx=bx+m;
	    *cx=u0;
	    cx=cx+m;
	    *dx=u0;
	    dx=dx+m;
	    *ex=u0;
	    ex=ex+m;
	    *fx=u0;
	    fx=fx+m;
	    *gx=u0;
	    gx=gx+m;
	    *hx=u0;
	    hx=hx+m;
	  } 
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=u0;
	    ax=ax+m4;
	    *bx=u0;
	    bx=bx+m4;
	    *cx=u0;
	    cx=cx+m4;
	    *dx=u0;
	    dx=dx+m4;
	  }
	  
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=u0;
	    ax=ax+m2;
	    *bx=u0;
	    bx=bx+m2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=u0;
	    ax=ax+l;
	  }
	  ay++;
	}
      }
    }
    gettime(&hi1, &lo1);
  } else {
    gettime(&hi0, &lo0);
    {
      double *ay,*ax,*bx,*cx,*dx;
      double u0,u1,u2,u3;
      int m,m2,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;
	u0=0; u1=0; u2=0; u3=0;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=u0;
	    ax=ax+m;
	    *bx=u0;
	    bx=bx+m;
	    *cx=u0;
	    cx=cx+m;
	    *dx=u0;
	    dx=dx+m;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=u0;
	    ax=ax+m2;
	    *bx=u0;
	    bx=bx+m2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=u0;
	    ax=ax+l;
	  }
	  ay++;
	}
      }
    }
    gettime(&hi1, &lo1);
  }
  return subtract64(hi0,lo0,hi1,lo1);
}


/* load copy test (strided load, contiguous store) */
int cpy_lc1(double* a,double* c,int l,int mx,int it)        
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0);
  {
    double *ay,*cy;
    double *ax;
    int i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;cy=c;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	while (i<=nn-1) {
	  i=i+1;
	  *cy++ = *ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1); 
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_lc2(double* a,double* c,int l,int mx,int it)        
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
	  i=i+2;
	  *cy = *ax;
	  ax=ax+m;
	  *(cy+1) = *bx;
	  bx=bx+m;
	  cy=cy+2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *cy++ = *ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1); 
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_lc4(double* a,double* c,int l,int mx,int it)        
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0);
  {
    double *ay,*cy;
    double *ax,*bx,*cx,*dx;
    int m,m2,i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;cy=c;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	m=l;
	bx=ay+m;
	m=m+l;
	m2=m;
	cx=ay+m;
	m=m+l;
	dx=ay+m;
	m=m+l;
	while (i<=nn-4) {
	  i=i+4;
	  *cy = *ax;
	  ax=ax+m;
	  *(cy+1) = *bx;
	  bx=bx+m;
	  *(cy+2) = *cx;
	  cx=cx+m;
	  *(cy+3) = *dx;
	  dx=dx+m;
	  cy=cy+4;
	}
	while (i<=nn-2) {
	  i=i+2;
	  *cy = *ax;
	  ax=ax+m2;
	  *(cy+1) = *bx;
	  bx=bx+m2;
	  cy=cy+2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *cy++ = *ax;
	  ax=ax+l;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1); 
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_lc8(double* a,double* c,int l,int mx,int it)        
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      double *ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      int m,m2,m4,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;
        for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m4=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  while (i<=nn-8) {
            i=i+8;
            *cy = *ax;
            ax=ax+m;
            *(cy+1) = *bx;
            bx=bx+m;
            *(cy+2) = *cx;
            cx=cx+m;
            *(cy+3) = *dx;
            dx=dx+m;
            *(cy+4) = *ex;
            ex=ex+m;
            *(cy+5) = *fx;
            fx=fx+m;
            *(cy+6) = *gx;
            gx=gx+m;
            *(cy+7) = *hx;
            hx=hx+m;
            cy=cy+8;
	  } 
          while (i<=nn-4) {
            i=i+4;
            *cy = *ax;
            ax=ax+m4;
            *(cy+1) = *bx;
            bx=bx+m4;
            *(cy+2) = *cx;
            cx=cx+m4;
            *(cy+3) = *dx;
            dx=dx+m4;
            cy=cy+4;
          }
          while (i<=nn-2) {
            i=i+2;
            *cy = *ax;
            ax=ax+m2;
            *(cy+1) = *bx;
            bx=bx+m2;
            cy=cy+2;
          }
          while (i<=nn-1) {
            i=i+1;
            *cy++ = *ax;
            ax=ax+l;
          }
          ay++;
        }
      }
    }
    gettime(&hi1, &lo1); 
  } else {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      double *ax,*bx,*cx,*dx;
      int m,m2,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;
        for (j=0; j<l; j++) {
          i=0;
          ax=ay;
          m=l;
          bx=ay+m;
          m=m+l;
          m2=m;
          cx=ay+m;
          m=m+l;
          dx=ay+m;
          m=m+l;
          while (i<=nn-4) {
            i=i+4;
            *cy = *ax;
            ax=ax+m;
            *(cy+1) = *bx;
            bx=bx+m;
            *(cy+2) = *cx;
            cx=cx+m;
            *(cy+3) = *dx;
            dx=dx+m;
            cy=cy+4;
          }
          while (i<=nn-2) {
            i=i+2;
            *cy = *ax;
            ax=ax+m2;
            *(cy+1) = *bx;
            bx=bx+m2;
            cy=cy+2;
          }
          while (i<=nn-1) {
            i=i+1;
            *cy = *ax;
            ax=ax+l;
            cy=cy+1;
          }
          ay++;
        }
      }
    }
    gettime(&hi1, &lo1); 
  }  
  return subtract64(hi0,lo0,hi1,lo1);
}


/* copy store test (contiguous load, strided store) */
int cpy_cs1(double* a,double* c,int l,int mx,int it)
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;

  nn=mx/l;
  gettime(&hi0, &lo0);
  {
    double *ay,*cy;
    double *ax;
    int i,j,k;

    for (k=0; k<it; k++) {
      ay=a;cy=c;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;

	while (i<=nn-1) {
	  i=i+1;
	  *ax=*cy;
	  ax=ax+l;
	  cy=cy+1;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}


int cpy_cs2(double* a,double* c,int l,int mx,int it)        
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
	  i=i+2;
	  *ax=*cy;
	  ax=ax+m;
	  *bx=*(cy+1);
	  bx=bx+m;
	  cy=cy+2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *ax=*cy;
	  ax=ax+l;
	  cy=cy+1;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_cs4(double* a,double* c,int l,int mx,int it)        
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  gettime(&hi0, &lo0);
  {
    double *ay,*cy;
    double *ax,*bx,*cx,*dx;
    int m,m2,i,j,k;
    
    for (k=0; k<it; k++) {
      ay=a;cy=c;
      for (j=0; j<l; j++) {
	i=0;
	ax=ay;
	m=l;
	bx=ay+m;
	m=m+l;
	m2=m;
	cx=ay+m;
	m=m+l;
	dx=ay+m;
	m=m+l;
	while (i<=nn-4) {
	  i=i+4;
	  *ax=*cy;
	  ax=ax+m;
	  *bx=*(cy+1);
	  bx=bx+m;
	  *cx=*(cy+2);
	  cx=cx+m;
	  *dx=*(cy+3);
	  dx=dx+m;
	  cy=cy+4;
	}
	while (i<=nn-2) {
	  i=i+2;
	  *ax=*cy;
	  ax=ax+m2;
	  *bx=*(cy+1);
	  bx=bx+m2;
	  cy=cy+2;
	}
	while (i<=nn-1) {
	  i=i+1;
	  *ax=*cy;
	  ax=ax+l;
	  cy=cy+1;
	}
	ay++;
      }
    }
  }
  gettime(&hi1, &lo1);
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_cs8(double* a,double* c,int l,int mx,int it)        
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      double *ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      int m,m2,m4,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m4=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  while (i<=nn-8) {
	    i=i+8;
	    *ax=*cy;
	    ax=ax+m;
	    *bx=*(cy+1);
	    bx=bx+m;
	    *cx=*(cy+2);
	    cx=cx+m;
	    *dx=*(cy+3);
	    dx=dx+m;
	    *ex=*(cy+4);
	    ex=ex+m;
	    *fx=*(cy+5);
	    fx=fx+m;
	    *gx=*(cy+6);
	    gx=gx+m;
	    *hx=*(cy+7);
	    hx=hx+m;
	    cy=cy+8;
	  }
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=*cy;
	    ax=ax+m4;
	    *bx=*(cy+1);
	    bx=bx+m4;
	    *cx=*(cy+2);
	    cx=cx+m4;
	    *dx=*(cy+3);
	    dx=dx+m4;
	    cy=cy+4;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=*cy;
	    ax=ax+m2;
	    *bx=*(cy+1);
	    bx=bx+m2;
	    cy=cy+2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=*cy;
	    ax=ax+l;
	    cy=cy+1;
	  }
	  ay++;
	}
      }
    }
    gettime(&hi1, &lo1);
  } else {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      double *ax,*bx,*cx,*dx;
      int m,m2,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;
	for (j=0; j<l; j++) {
	  i=0;
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m2=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=*cy;
	    ax=ax+m;
	    *bx=*(cy+1);
	    bx=bx+m;
	    *cx=*(cy+2);
	    cx=cx+m;
	    *dx=*(cy+3);
	    dx=dx+m;
	    cy=cy+4;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=*cy;
	    ax=ax+m2;
	    *bx=*(cy+1);
	    bx=bx+m2;
	    cy=cy+2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=*cy;
	    ax=ax+l;
	    cy=cy+1;
	  }
	  ay++;
	}
      }
    }
    gettime(&hi1, &lo1);
  }
  return subtract64(hi0,lo0,hi1,lo1);
}

