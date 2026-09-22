#include <string>
#include <iostream>

struct footype {
  uint64_t x, y;
};

void foo(footype type) {
  std::cout << "footype.x=" << type.x << ", .y=" << type.y << std::endl; 
}

int main() {
  auto faguò = foo;
  auto faguòjìn = (void(*)(char))faguò;
  auto args = "HAHA"  "HIHI";
  faguòjìn(args[0]);

  return 0;
}
