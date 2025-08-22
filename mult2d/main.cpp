#include <iostream>

int main(int argc, char *argv[]) {
  double x = 1.7;
  double y = 3.2;
  double z;

  // multiply two doubles and store the result to a variable

  __asm__ __volatile__("movsd %[_x], %%xmm0\n\t"
                       "movsd %[_y], %%xmm1\n\t"
                       "mulsd %%xmm0, %%xmm1\n\t"
                       "movsd %%xmm1, %[res]\n\t"
                       : [res] "=m"(z)
                       : [_x] "m"(x), [_y] "m"(y)
                       : "xmm0", "xmm1");

  std::cout << "z = " << z << std::endl;
  return 0;
}
