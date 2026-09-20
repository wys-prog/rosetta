#include <stdint.h>
#include <stdio.h>

struct vec2 {
  uint32_t x;
  uint32_t y;
};

void print_bytes(const void *data, size_t size) {
  const uint8_t *bytes = data;
  for (size_t i = 0; i < size; ++i) printf("%02x ", bytes[i]);
  putchar('\n');
}

// #ifdef _WIN32
// extern __declspec(dllexport)
// #endif
void printvec2(struct vec2 vec) {
  printf("%s: sizeof(vec2): %lu\n", __func__, sizeof(vec));
  printf("%s: x: %x, y: %x\n", __func__, vec.x, vec.y);

  printf("%s: bytes:", __func__);
  void* asp = (void*)&vec;
  print_bytes(asp, sizeof(vec));
}

int main() {
  printf("%s: hiii", __func__);
  return 0;
}
