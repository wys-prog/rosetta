#include <stack>
#include <iostream>
#include <dlfcn.h>

#include "abi.h"
#include "lua/lua.hpp"
#include "flic.hpp"

local std::stack<const char*> errors;

local const char* last_error() {
  if (errors.size() > 1) {
    const char* p = errors.top();
    errors.pop();
    return p;
  }

  if (errors.empty()) {
    errors.emplace("");
  }

  return errors.top();
}

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

local int l_dlopen(lua_State* L) {
  const char* path = luaL_checkstring(L, 1);
  void* handle = unix_dlopen(path);

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
  void* fun = unix_loadf(handle, sym);
  
  if (! fun) {
    lua_pushnil(L);
  } else {
    lua_pushinteger(L, (i64)fun);
  }

  return 1;
}

local int l_dlclose(lua_State* L) {
  dlclose((void*)luaL_checkinteger(L, 1));
  return 0;
}

local int l_callum(lua_State* L) {
  void* fun = (void*)luaL_checkinteger(L, 1);
  i64 outlen = luaL_checkinteger(L, 2);

  size_t bytessize;
  const char* bytes = luaL_checklstring(L, 3, &bytessize);
  auto asfunc = (ui8(*)(char))fun;
  std::cout << __func__ << ": " << "calling a func with '" << std::string(bytes, bytessize) << "'" << std::endl;
  std::cout << __func__ << ": " << std::format("beg:{}, len:{}", (void*)bytes, bytessize) << std::endl;
  ui8 out = asfunc(*bytes);
  ui8* p = &out;

  lua_pushlstring(L, (const char*)p, outlen);

  return 1;
}

local luaL_Reg libfli[] = {
  {"dlopen", l_dlopen},
  {"dlclose", l_dlclose},
  {"error", [](lua_State* L) {
    lua_pushstring(L, last_error());
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
      std::cerr << "lua error in file '" << view << ": " << lua_tostring(L, -1) << std::endl;
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