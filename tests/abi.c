#include <stdint.h>
#include <stdio.h>

struct vec2 {
  uint32_t x;
};

void printvec2(struct vec2 vec) {
  printf("%s: sizeof(vec2): %lu\n", __func__, sizeof(vec));
  printf("%s: %x\n", __func__, vec.x);
}

int main() {
  printf("%s: hiii", __func__);
  return 0;
}
