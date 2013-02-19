#include <stdio.h>

int main(void) {
  int x, bitscan(); 
  x = bitscan(0x7531208);
  printf("bitscan(0x7531208) = %d\n", x);
  x = bitscan(0);
  printf("bitscan(0) = %d\n", x);
}
