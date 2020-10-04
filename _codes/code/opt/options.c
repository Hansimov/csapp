/*
 * Code to process options from command line arguments.
 * Option values can be integers,
 * floats, or strings.   Allow prefix of option name, as long as
 * unambiguous.  Also support printing of usage information.
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "options.h"


typedef enum {INT_OPTION, DOUBLE_OPTION, STRING_OPTION} option_t;

typedef struct {
  char *name;
  option_t type;
  union {
    int *i;
    double *d;
    char **s;
  } valp;
} option_entry;

#define MAX_OPTION 100
static option_entry options[MAX_OPTION];

static int option_count = 0;

/* Determine length of string match */
static int match_length(char *s, char *t)
{
  int result = 0;
  while (*s == *t) {
    result ++;
    if (*s == '\0')
      break;
    s++; t++;
  }
  return result;
}

void usage(char *prog)
{
  int j;
  fprintf(stderr, "Usage: %s", prog);
  for (j = 0; j < option_count; j++) {
    switch(options[j].type) {
    case INT_OPTION:
      fprintf(stderr, " [-%s (%d)]", options[j].name, *(options[j].valp.i));
      break;
    case DOUBLE_OPTION:
      fprintf(stderr, " [-%s (%.2f)]", options[j].name, *(options[j].valp.d));
      break;
    case STRING_OPTION:
      fprintf(stderr, " [-%s (%s)]", options[j].name, *(options[j].valp.s));
      break;
    }
  }
  fprintf(stderr, "\n");
  exit(1);
}

/* Determine which option is best match. */
static int find_option(char *prog, char *name)
{
  int sofar = -1;
  int sofar_length = 0;
  int i;
  int ambiguous = 0;
  for (i = 0; i < option_count; i++) {
    int length = match_length(options[i].name, name);
    if (length > sofar_length) {
      sofar = i;
      sofar_length = length;
      ambiguous = 0;
    } else if (length > 0 && length == sofar_length) {
      ambiguous = 1;
    }
  }
  if (sofar_length == 0) {
    fprintf(stderr, "No match found to option '%s'\n", name);
    usage(prog);
  } else if (ambiguous) {
    fprintf(stderr, "Ambiguous option: '%s'\n", name);
    usage(prog);
  }
  return sofar;
}


void add_int_option(char *name, int *var)
{
  options[option_count].name = name;
  options[option_count].type = INT_OPTION;
  options[option_count].valp.i = var;
  option_count++;
}

void add_double_option(char *name, double *var)
{
  options[option_count].name = name;
  options[option_count].type = DOUBLE_OPTION;
  options[option_count].valp.d = var;
  option_count++;
}

void add_string_option(char *name, char **var)
{
  options[option_count].name = name;
  options[option_count].type = STRING_OPTION;
  options[option_count].valp.s = var;
  option_count++;
}

int parse_options(int argc, char *argv[], char *otherargs[])
{
  int i, j;
  int ocount = 0;
  float f;
  char *prog = argv[0];
  for (i = 1; i < argc; i++) {
    /* Look for options */
    if (*argv[i] != '-') {
      /* Must be another class of argument */
      if (otherargs)
	otherargs[ocount] = argv[i];
      ocount++;
      continue;
    }
    j = find_option(prog, argv[i]+1);
    i++; /* Move to next argument */
    if (i >= argc) {
      fprintf(stderr, "Missing value for option %s\n", options[j].name);
      usage(prog);
    }
    switch(options[j].type) {
    case INT_OPTION:
      if (sscanf(argv[i], "%d", options[j].valp.i) != 1) {
	fprintf(stderr, "Can't parse argument '%s' as integer\n", argv[i]);
	usage(prog);
      }
      break;
    case DOUBLE_OPTION:
      if (sscanf(argv[i], "%f", &f) != 1) {
	fprintf(stderr, "Can't parse argument '%s' as double\n", argv[i]);
	usage(prog);
      }
      *options[j].valp.d = f;
      break;
    case STRING_OPTION:
      *(options[j].valp.s) = argv[i];
      break;
    default:
      fprintf(stderr,
	      "Internal error.  Don't know option type %d\n", options[j].type);
      exit(1);
    }
  }
  return ocount;
}


static char *strsave(char *s)
{
  char *result = (char *) malloc(strlen(s)+1);
  strcpy (result, s);
  return result;
}

void parse_option_file(char *prog, FILE *option_file)
{
  int j;
  float f;
  char name[50], val[50];
  while (fscanf(option_file, "%s %s", name, val) == 2) {
    if (name[0] != '-') {
      fprintf(stderr, "Need '-' before option '%s'\n", name);
      usage(prog);
    }
    j = find_option(prog, name+1);
    switch(options[j].type) {
    case INT_OPTION:
      if (sscanf(val, "%d", options[j].valp.i) != 1) {
	fprintf(stderr, "Can't parse argument '%s' as integer\n", val);
	usage(prog);
      }
      break;
    case DOUBLE_OPTION:
      if (sscanf(val, "%f", &f) != 1) {
	fprintf(stderr, "Can't parse argument '%s' as double\n", val);
	usage(prog);
      }
      *options[j].valp.d = f;
      break;
    case STRING_OPTION:
      *(options[j].valp.s) = strsave(val);
      break;
    default:
      fprintf(stderr,
	      "Internal error.  Don't know option type %d\n", options[j].type);
      exit(1);
    }
  }
}

void show_options(FILE *outfile)
{
  int i;
  for (i = 0; i < option_count; i++) {
    switch(options[i].type) {
    case INT_OPTION:
      fprintf(outfile, "%s\t%d\n", options[i].name, *(options[i].valp.i));
      break;
    case DOUBLE_OPTION:
      fprintf(outfile, "%s\t%f\n", options[i].name, *(options[i].valp.d));
      break;
    case STRING_OPTION:
      if (*options[i].valp.s)
	fprintf(outfile, "%s\t%s\n", options[i].name, *(options[i].valp.s));
      break;
    }
  }
}


