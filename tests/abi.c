#include <stdint.h>
#include <stdio.h>

struct vec2 {
  uint32_t x;
  uint32_t y;
};

// #ifdef _WIN32
// extern __declspec(dllexport)
// #endif
void printvec2(struct vec2 vec) {
  printf("%s: sizeof(vec2): %lu\n", __func__, sizeof(vec));
  printf("%s: x: %x, y: %x\n", __func__, vec.x, vec.y);
}

int main() {
  printf("%s: hiii", __func__);
  return 0;
}
