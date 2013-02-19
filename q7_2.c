#include <stdio.h>

int main() {
  double x[10], y[10], z, innerprod();
  int i;
  for(i = 0; i < 10; i++) {
    x[i] = 1.0 * i;
    y[i] = x[i] + 1.0;
  }
  z = innerprod(10, x, y);
  printf("z = %f\n",z);
}
