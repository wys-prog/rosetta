#include <dlfcn.h>
#include <iostream>

struct vec2 {
  uint32_t x;
};

void putadr(const char* name, void* adr) {
  std::cout << __func__ << ": " << name << " 0x" << std::hex << adr << std::endl;
}

typedef void(*printvec2)(struct vec2);

int main() {
  void* dll = dlopen("abi", RTLD_NOW);

  if (! dll) {
    std::cout << dlerror() << std::endl;
    return 1;
  }

  void* sym = dlsym(dll, "printvec2");

  Dl_info info;
  dladdr(sym, &info);

  auto base = info.dli_fbase;
  // MACOS: auto rel = 0x0000000100000460 - 0x0000000100000000;
  auto rel = 0x0000000140001490 - 0x0000000100000000;
  auto adr = (size_t)base + rel;
  auto fun = (printvec2)adr;
  vec2 vec = { .x = 12, };

  putadr("sym", sym);
  putadr("fun", (void*)fun);
  fun(vec);

  return 0;
}