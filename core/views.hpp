#pragma once

#include "abi.h"

namespace ul2 {
  inline strview trim(strview view) {
    while (!view.empty() && std::isspace(static_cast<unsigned char>(view.front()))) view.remove_prefix(1);
    while (!view.empty() && std::isspace(static_cast<unsigned char>(view.back()))) view.remove_suffix(1);

    return view;
  }

  inline void foreach(const strview& view, char sep, auto&& fn) {
    size_t pos = 0;

    while (pos < view.size()) {
      size_t end = view.find(sep, pos);
      if (end == strview::npos) end = view.size();

      fn(trim(view.substr(pos, end - pos)));
      pos = end + (end < view.size());
    }
  }
}
