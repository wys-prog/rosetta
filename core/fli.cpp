#include <stack>
#include <iostream>

#include "abi.h"
#include "lua/lua.hpp"
#include "flic.hpp"

#ifdef _WIN32
#include <windows.h>
#include <format>
#define IMPL(x) win_##x
#else
#include <dlfcn.h>
#define IMPL(x) unix_##x
#endif

local std::stack<std::string> errors;

local std::string last_error() {
  if (errors.size() > 1) {
    std::string p = errors.top();
    errors.pop();
    return p;
  }

  if (errors.empty()) {
    errors.emplace("");
  }

  return errors.top();
}

#ifndef _WIN32
local void* unix_dlopen(const char* path) {
  void* handle = dlopen(path, RTLD_NOW);

  if (! handle) {
    errors.push(dlerror());
    return nullptr;
  }

  return handle;
}

local void* unix_loadf(void* handle, const char* sym) {
  void* fun = dlsym(handle, sym);

  if (! fun) {
    errors.push(dlerror());
    return nullptr;
  }

  return fun;
}

local void unix_dlclose(void* handle) {
  dlclose(handle);
}

#else

local std::string win_error_message(const char* operation) {
  DWORD err = GetLastError();

  static thread_local std::string msg;

  char* system_msg = nullptr;

  DWORD len = FormatMessageA(
    FORMAT_MESSAGE_ALLOCATE_BUFFER |
    FORMAT_MESSAGE_FROM_SYSTEM |
    FORMAT_MESSAGE_IGNORE_INSERTS,
    nullptr,
    err,
    MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
    (LPSTR)&system_msg,
    0,
    nullptr
  );

  if (len == 0) {
    msg = std::format("{} failed (Windows error {})", operation, err);
  } else {
    msg = std::format(
      "{} failed (Windows error {}): {}",
      operation,
      err,
      std::string_view(system_msg, len)
    );

    LocalFree(system_msg);
  }

  return msg;
}


local void* win_dlopen(const char* path) {
  HMODULE handle = LoadLibraryA(path);

  if (!handle) {
    errors.push(win_error_message("LoadLibraryA"));
    return nullptr;
  }

  return (void*)handle;
}

local void* win_loadf(void* handle, const char* sym) {
  FARPROC fun = GetProcAddress((HMODULE)handle, sym);

  if (!fun) {
    errors.push(win_error_message("GetProcAddress"));
    return nullptr;
  }

  return (void*)fun;
}

local void win_dlclose(void* handle) {
  if (handle) {
    FreeLibrary((HMODULE)handle);
  }
}

#endif

local int l_dlopen(lua_State* L) {
  const char* path = luaL_checkstring(L, 1);
  void* handle = IMPL(dlopen)(path);

  if (! handle) {
    lua_pushnil(L);
  } else {
    lua_pushinteger(L, (i64)handle);
  }

  return 1;
}

local int l_loadf(lua_State* L) {
  void* handle = (void*)luaL_checkinteger(L, 1);
  const char* sym = luaL_checkstring(L, 2);
  void* fun = IMPL(loadf)(handle, sym);

  if (! fun) {
    lua_pushnil(L);
  } else {
    lua_pushinteger(L, (i64)fun);
  }

  return 1;
}

local int l_dlclose(lua_State* L) {
  IMPL(dlclose)((void*)luaL_checkinteger(L, 1));
  return 0;
}

local int l_callum(lua_State* L) {
  void* fun = (void*)luaL_checkinteger(L, 1);
  i64 outlen = luaL_checkinteger(L, 2);

  size_t bytessize;
  const char* bytes = luaL_checklstring(L, 3, &bytessize);
  auto asfunc = (ui8(*)(char))fun;
  ui8 out = asfunc(*bytes);
  ui8* p = &out;

  lua_pushlstring(L, (const char*)p, outlen);

  return 1;
}

local luaL_Reg libfli[] = {
  {"dlopen", l_dlopen},
  {"dlclose", l_dlclose},
  {"error", [](lua_State* L) {
    lua_pushstring(L, last_error().c_str());
    return 1;
  }},
  {"loadf", l_loadf},
  {"callum", l_callum},
  {NULL, NULL}
};

int main(int argc, char* argv[]) {
  lua_State* L = luaL_newstate();
  luaL_openlibs(L);

  luaL_newlib(L, libfli);
  lua_setglobal(L, "fli");
  ul2::open_libflic(L);

  for (int i = 1; i < argc; i++) {
    std::string_view view = argv[i];

    if (! view.starts_with('-') && luaL_dofile(L, view.data()) != LUA_OK) {
      if (lua_isstring(L, -1)) {
        auto err = lua_tostring(L, -1);
        std::cerr << "lua error in file '" << view << ": " << (err ? err : "<unable to get error>") << std::endl;
      }
    }
  }

  lua_close(L);

  return 0;
}

/**
 * fli.dlopen(String) -> handle
 * fli.loadf(HMOD, String) -> fun
 * fli.close(HMOD) -> nil
 * fli.callum(fun, retlen, bytes) -> const ui8*?
 * fli.error() -> String
 * NOTYET: fli.addrof(HMOD) -> i64
 */
