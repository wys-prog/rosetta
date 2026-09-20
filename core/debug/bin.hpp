#pragma once

#include "../abi.h"
#include <iostream>

namespace ul2::debug {
  std::string fmtbytes(const ui8*, size_t len);
  
  template <typename... Args>
  void writeln(Args&&... args) {
    std::cout << "debug: ";
    ((std::cout << args << " "), ...);
    std::cout << std::endl;
  }
}