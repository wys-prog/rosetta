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

struct _8bytes {
  uint8_t a, b, c, d, e, f, g, h;
};

void print8bytes(struct _8bytes bytes) {
  printf("%s: <%c:%c:%c:%c:%c:%c:%c:%c>\n", __func__, bytes.a, bytes.b, bytes.c, bytes.d, bytes.e, bytes.f, bytes.g, bytes.h);
  printf("%s: <0x%x:0x%x:0x%x:0x%x:0x%x:0x%x:0x%x:0x%x>\n", __func__, 
    (int)bytes.a, (int)bytes.b, (int)bytes.c, (int)bytes.d,
    (int)bytes.e, (int)bytes.f, (int)bytes.g, (int)bytes.h
  );
}

int main() {
  printf("%s: hiii", __func__);
  return 0;
}
