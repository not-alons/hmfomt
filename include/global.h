#include "types.h"

#define NULL ((void *) 0)

#define TRUE  1
#define FALSE 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define min(a,b) (((a) < (b)) ? (a) : (b))
