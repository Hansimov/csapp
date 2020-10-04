#include "cpyr.h"

double u;

/* remote tests */


int cpy_ls_r(a,l,mx,it)
     double *a;
     int l,mx,it;
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      unsigned int stop;
      double *ay,*ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0,u1,u2,u3,u4,u5,u6,u7;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a; stop=(unsigned int) a + MAXREMOTE;
	u0=0; u1=0; u2=0; u3=0; u4=0; u5=0; u6=0; u7=0;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m0=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  i=0;
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
	    if ((unsigned int) hx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  hx %d, a %d, diff %d\n",
		       mx,hx,a,(int) ((unsigned int) hx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      m1=m;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l;
	      m0=m;
	      ex=ay+m;
	      m=m+l;
	      fx=ay+m;
	      m=m+l;
	      gx=ay+m;
	      m=m+l;
	      hx=ay+m;
	      m=m+l; 
	    }        
	  } 
	  while (i<=nn-4) {
	    i=i+4;
	    u0 += *ax;
	    ax=ax+m0;
	    u1 += *bx;
	    bx=bx+m0;
	    u2 += *cx;
	    cx=cx+m0;
	    u3 += *dx;
	    dx=dx+m0;
	    if ((unsigned int) dx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  dx %d, a %d, diff %d\n",
		       mx,dx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l; 
	    }                 
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    u0 += *ax;
	    ax=ax+m1;
	    u1 += *bx;
	    bx=bx+m1;
	    if ((unsigned int) bx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  bx %d, a %d, diff %d\n",
		       mx,bx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	    }                 
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    u0 += *ax;
	    ax=ax+l;
	    if ((unsigned int) ax>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  ax %d, a %d, diff %d\n",
		       mx,ax,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	    }                 
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
      unsigned int stop;
      double *ay,*ax,*bx,*cx,*dx;
      double u0,u1,u2,u3;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a; stop=(unsigned int) a + MAXREMOTE;
	u0=0; u1=0; u2=0; u3=0;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  i=0;
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
	    if ((unsigned int) dx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  dx %d, a %d, diff %d\n",
		       mx,dx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l; 
	    }                 
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    u0 += *ax;
	    ax=ax+m1;
	    u1 += *bx;
	    bx=bx+m1;
	    if ((unsigned int) bx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  bx %d, a %d, diff %d\n",
		       mx,bx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	    }       
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    u0 += *ax;
	    ax=ax+l;
	    if ((unsigned int) ax>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  ax %d, a %d, diff %d\n",
		       mx,ax,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	    }    
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

int cpy_vs_r(a,l,mx,it) /* remote (MAXREMOTE) */
     double *a;
     int l,mx,it;
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0); 
    {
      unsigned int stop;
      double *ay,*ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0,u1,u2,u3,u4,u5,u6,u7;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;stop=(unsigned int) a + MAXREMOTE;
	u0=0; u1=1; u2=2; u3=3; u4=4; u5=5; u6=6; u7=7;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m0=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  i=0;
	  while (i<=nn-8) {
	    i=i+8;
	    *ax=u0;
	    ax=ax+m;
	    *bx=u1;
	    bx=bx+m;
	    *cx=u2;
	    cx=cx+m;
	    *dx=u3;
	    dx=dx+m;
	    *ex=u4;
	    ex=ex+m;
	    *fx=u5;
	    fx=fx+m;
	    *gx=u6;
	    gx=gx+m;
	    *hx=u7;
	    hx=hx+m;
	    if ((unsigned int) hx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  hx %d, a %d, diff %d\n",
		       mx,hx,a,(int) ((unsigned int) hx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      m1=m;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l;
	      m0=m;
	      ex=ay+m;
	      m=m+l;
	      fx=ay+m;
	      m=m+l;
	      gx=ay+m;
	      m=m+l;
	      hx=ay+m;
	      m=m+l; 
	    }        
	  } 
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=u0;
	    ax=ax+m0;
	    *bx=u1;
	    bx=bx+m0;
	    *cx=u2;
	    cx=cx+m0;
	    *dx=u3;
	    dx=dx+m0;
	    if ((unsigned int) dx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  dx %d, a %d, diff %d\n",
		       mx,dx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l; 
	    }                 
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=u0;
	    ax=ax+m1;
	    *bx=u1;
	    bx=bx+m1;
	    if ((unsigned int) bx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  bx %d, a %d, diff %d\n",
		       mx,bx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	    }                 
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=u0;
	    ax=ax+l;
	    if ((unsigned int) ax>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  ax %d, a %d, diff %d\n",
		       mx,ax,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	    }                 
	  }
	  ay++;
	}}
    }
    gettime(&hi1, &lo1);
  } else {
    gettime(&hi0, &lo0);
    {
      unsigned int stop;
      double *ay,*ax,*bx,*cx,*dx;
      double u0,u1,u2,u3;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;stop=(unsigned int) a + MAXREMOTE;
	u0=0; u1=1; u2=2; u3=3;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  i=0;
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=u0;
	    ax=ax+m;
	    *bx=u1;
	    bx=bx+m;
	    *cx=u2;
	    cx=cx+m;
	    *dx=u3;
	    dx=dx+m;
	    if ((unsigned int) dx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  dx %d, a %d, diff %d\n",
		       mx,dx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l; 
	    }                 
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=u0;
	    ax=ax+m1;
	    *bx=u1;
	    bx=bx+m1;
	    if ((unsigned int) bx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  bx %d, a %d, diff %d\n",
		       mx,bx,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	    }                 
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=u0;
	    ax=ax+l;
	    if ((unsigned int) ax>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  ax %d, a %d, diff %d\n",
		       mx,ax,a,(int) ((unsigned int) dx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	    }                 
	  }
	  ay++;
	}}
    }
    gettime(&hi1, &lo1);
  }
  
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_lc_r(a,c,l,mx,it)  /* remote (MAXREMOTE) */
     double *a,*c;
     int l,mx,it;
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      unsigned int cystop;
      double *ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0,u1,u2,u3,u4,u5,u6,u7;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c; cystop=(unsigned int) cy + MAXREMOTE;
	DEBUGPRINT {
	  printf("CY,C, maxrem, cystop start %d, %d, %d, %d\n", cy,c, MAXREMOTE, cystop);
	  fflush(stdout);
	}
        u0=0; u1=0; u2=0; u3=0; u4=0; u5=0; u6=0; u7=0;
        for (j=0; j<l; j++) {
          ax=ay;
          m=l;
          bx=ay+m;
          m=m+l;
          m1=m;
          cx=ay+m;
          m=m+l;
          dx=ay+m;
          m=m+l;
          m0=m;
          ex=ay+m;
          m=m+l;
          fx=ay+m;
          m=m+l;
          gx=ay+m;
          m=m+l;
          hx=ay+m;
          m=m+l; 
          i=0;
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
	    if ((unsigned int) cy>=cystop) { 
	      DEBUGPRINT {
		printf("mx %d:  cy %d, c %d, diff %d\n",
		       mx,cy,c,(int) ((unsigned int) cy - (unsigned int) c));
		fflush(stdout);
	      }
	      cy=c;
	    }
          } 
          while (i<=nn-4) {
            i=i+4;
            *cy = *ax;
            ax=ax+m0;
            *(cy+1) = *bx;
            bx=bx+m0;
            *(cy+2) = *cx;
            cx=cx+m0;
            *(cy+3) = *dx;
            dx=dx+m0;
            cy=cy+4;
	    DEBUGPRINT {printf("4   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
          }
          while (i<=nn-2) {
            i=i+2;
            *cy = *ax;
            ax=ax+m1;
            *(cy+1) = *bx;
            bx=bx+m1;
            cy=cy+2;
	    DEBUGPRINT {printf("2   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
	  }
          while (i<=nn-1) {
            i=i+1;
            *cy = *ax;
            ax=ax+l;
            cy=cy+1;
	    DEBUGPRINT {printf("1   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
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
      double u0,u1,u2,u3;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;
        u0=0; u1=0; u2=0; u3=0;
        for (j=0; j<l; j++) {
          ax=ay;
          m=l;
          bx=ay+m;
          m=m+l;
          m1=m;
          cx=ay+m;
          m=m+l;
          dx=ay+m;
          m=m+l;
          i=0;
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
	    DEBUGPRINT {printf("42   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
          }
          while (i<=nn-2) {
            i=i+2;
            *cy = *ax;
            ax=ax+m1;
            *(cy+1) = *bx;
            bx=bx+m1;
            cy=cy+2;
	    DEBUGPRINT {printf("22   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
          }
          while (i<=nn-1) {
            i=i+1;
            *cy = *ax;
            ax=ax+l;
            cy=cy+1;
	    DEBUGPRINT {printf("41   mx %d:  cy %d\n",mx,cy);fflush(stdout);}
          }
          ay++;
        }
      }
    }
    gettime(&hi1, &lo1);
    
  }
  
  return subtract64(hi0,lo0,hi1,lo1);
}

int cpy_cs_r(a,c,l,mx,it) /* a,c changed !!!*/ /* remote (MAXREMOTE) */
     double *a,*c;
     int l,mx,it;
{
  long nn;
  uint32 hi0, lo0, hi1, lo1;
  
  nn=mx/l; 
  if (nn>16) {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      unsigned int stop;
      double *ax,*bx,*cx,*dx,*ex,*fx,*gx,*hx;
      double u0,u1,u2,u3,u4,u5,u6,u7;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c;stop=(unsigned int) a + MAXREMOTE;
	u0=0; u1=0; u2=0; u3=0; u4=0; u5=0; u6=0; u7=0;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  m0=m;
	  ex=ay+m;
	  m=m+l;
	  fx=ay+m;
	  m=m+l;
	  gx=ay+m;
	  m=m+l;
	  hx=ay+m;
	  m=m+l; 
	  i=0;
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
	    if ((unsigned int) hx>=stop) { 
	      DEBUGPRINT {
		printf("mx %d:  hx %d, a %d, diff %d\n",
		       mx,hx,a,(int) ((unsigned int) hx - (unsigned int) a));
		fflush(stdout);
	      }
	      ax=ay;
	      m=l;
	      bx=ay+m;
	      m=m+l;
	      m1=m;
	      cx=ay+m;
	      m=m+l;
	      dx=ay+m;
	      m=m+l;
	      m0=m;
	      ex=ay+m;
	      m=m+l;
	      fx=ay+m;
	      m=m+l;
	      gx=ay+m;
	      m=m+l;
	      hx=ay+m;
	      m=m+l; 
	    }
	  }
	  while (i<=nn-4) {
	    i=i+4;
	    *ax=*cy;
	    ax=ax+m0;
	    *bx=*(cy+1);
	    bx=bx+m0;
	    *cx=*(cy+2);
	    cx=cx+m0;
	    *dx=*(cy+3);
	    dx=dx+m0;
	    cy=cy+4;
	  }
	  while (i<=nn-2) {
	    i=i+2;
	    *ax=*cy;
	    ax=ax+m1;
	    *bx=*(cy+1);
	    bx=bx+m1;
	    cy=cy+2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=*cy;
	    ax=ax+l;
	    cy=cy+1;
	  }
	  ay++;
	}}
    }
    gettime(&hi1, &lo1);
  } else {
    gettime(&hi0, &lo0);
    {
      double *ay,*cy;
      double *ax,*bx,*cx,*dx;
      double u0,u1,u2,u3;
      int m,m0,m1,i,j,k;
      
      for (k=0; k<it; k++) {
	ay=a;cy=c; 
        u0=0; u1=0; u2=0; u3=0;
	for (j=0; j<l; j++) {
	  ax=ay;
	  m=l;
	  bx=ay+m;
	  m=m+l;
	  m1=m;
	  cx=ay+m;
	  m=m+l;
	  dx=ay+m;
	  m=m+l;
	  i=0;
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
	    ax=ax+m1;
	    *bx=*(cy+1);
	    bx=bx+m1;
	    cy=cy+2;
	  }
	  while (i<=nn-1) {
	    i=i+1;
	    *ax=*cy;
	    ax=ax+l;
	    cy=cy+1;
	  }
	  ay++;
	}}
    }
    gettime(&hi1, &lo1);
  }
  return subtract64(hi0,lo0,hi1,lo1);
}
