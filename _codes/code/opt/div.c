#include <stdio.h>
#include <stdlib.h>
#include "fcyc.h"


#define NELE 512

typedef enum { NEG_VAL, POS_VAL, AMIX_VAL, RMIX_VAL, SINK_VAL } val_t;

/* Each array contains set of elements of different VAL's */
int ival[5][NELE];
long lval[5][NELE];
float fval[5][NELE];
double dval[5][NELE];

static void init()
{
  int i, j;
  for (i = 0; i < NELE; i++) {
    for (j = 0; j < 4; j++) {
      int val = 0;
      while (!val)
	val = random();
      if (val < 0)
	val = -val;
      switch (j) {
      case NEG_VAL:
	ival[j][i] = -val;
	break;
      case POS_VAL:
	ival[j][i] = val;
	break;
      case AMIX_VAL:
	ival[j][i] = i & 0x1 ? val : -val;
	break;
      case RMIX_VAL:
	ival[j][i] = random() & 0x1 ? val : -val;
	break;
      }
      lval[j][i] = (long) ival[j][i];
      fval[j][i] = (float) ival[j][i];
      dval[j][i] = (double) ival[j][i];
    }
  }
}

val_t num_type = NEG_VAL;
val_t den_type = NEG_VAL;
int use_cond = 0;

void itest(int *argspec)
{
  val_t num_type = argspec[0];
  val_t den_type = argspec[1];
  int use_cond = argspec[2];
  int *num = ival[num_type];
  int *den = ival[den_type];
  volatile int sink;
  int i;
  if (use_cond) {
    for (i = 0; i < NELE; i++)
      sink = den[i] < 0 ? 1 : num[i] / den[i];
  } else {
    for (i = 0; i < NELE; i++)
      sink = num[i] / den[i];
  }
}

void ltest(int *argspec)
{
  val_t num_type = argspec[0];
  val_t den_type = argspec[1];
  int use_cond = argspec[2];
  long *num = lval[num_type];
  long *den = lval[den_type];
  volatile long sink;
  int i;
  if (use_cond) {
    for (i = 0; i < NELE; i++)
      sink = den[i] < 0 ? 1 : num[i] / den[i];
  } else {
    for (i = 0; i < NELE; i++)
      sink = num[i] / den[i];
  }
}

void ftest(int *argspec)
{
  val_t num_type = argspec[0];
  val_t den_type = argspec[1];
  int use_cond = argspec[2];
  float *num = fval[num_type];
  float *den = fval[den_type];
  volatile float sink;
  int i;
  if (use_cond) {
    for (i = 0; i < NELE; i++)
      sink = den[i] < 0 ? 1 : num[i] / den[i];
  } else {
    for (i = 0; i < NELE; i++)
      sink = num[i] / den[i];
  }
}

void dtest(int *argspec)
{
  val_t num_type = argspec[0];
  val_t den_type = argspec[1];
  int use_cond = argspec[2];
  double *num = dval[num_type];
  double *den = dval[den_type];
  volatile double sink;
  int i;
  if (use_cond) {
    for (i = 0; i < NELE; i++)
      sink = den[i] < 0 ? 1 : num[i] / den[i];
  } else {
    for (i = 0; i < NELE; i++)
      sink = num[i] / den[i];
  }
}

double cpt(test_funct tf, val_t num_type, val_t den_type, int use_cond)
{
  long params[3] = { num_type, den_type, use_cond };
  double t = fcyc(tf, params);
  return t/NELE;
}

void run_tests(test_funct tf, char *descr)
{
  printf("Function: %s\t  div(+,   -)\tCPD = %.2f\n", descr,
	 cpt(tf, POS_VAL, NEG_VAL, 0));
  printf("Function: %s\t cdiv(+,   -)\tCPD = %.2f\n", descr,
	 cpt(tf, POS_VAL, NEG_VAL, 1));
  printf("Function: %s\t cdiv(-,   +)\tCPD = %.2f\n", descr,
	 cpt(tf, NEG_VAL, POS_VAL, 1));
  printf("Function: %s\t cdiv(+, a+-)\tCPD = %.2f\n", descr,
	 cpt(tf, POS_VAL, AMIX_VAL, 1));
  printf("Function: %s\t cdiv(+, r+-)\tCPD = %.2f\n", descr,
	 cpt(tf, POS_VAL, RMIX_VAL, 1));
}

int main()
{
    init();
    run_tests((test_funct) itest, "int   ");
    run_tests((test_funct) ltest, "long  ");
    run_tests((test_funct) ftest, "float ");
    run_tests((test_funct) dtest, "double");
    return 0;
}
