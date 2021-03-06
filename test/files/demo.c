/*
 * Demonstration of the Emacs package Preproc Font Lock.
 */

/* Include directive */
#include <stdio.h>

/* Normal macro */
#define HORSE 1

/* Multiline macro */
#define MAX(x, y)                              \
  (  (x) > (y)                                 \
   ? (x)                                       \
   : (y))

/* Broken multiline macro (end-of-line backslash missing) */
#define MIN(x, y)                              \
  (  (x) < (y)
   ? (x)                                       \
   : (y))
