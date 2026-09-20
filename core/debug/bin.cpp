#include "bin.hpp"

#include <sstream>

namespace ul2::debug {
  std::string fmtbytes(const ui8* bytes, size_t len) {
    std::stringstream mabuff;
    mabuff << "view over byte array, size: " << len << '\n' << std::hex;

    for (size_t i = 0; i < len;) {
      for (size_t j = 0; j < 4; j++) {
        mabuff << "0x" << (int)bytes[i++] << ' ';
      }
      mabuff << '\n';
    }
    
    return mabuff.str();
  }
}