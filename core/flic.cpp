#include "abi.h"
#include "views.hpp"
#include "lua/lua.hpp"

#include <memory>
#include <string>
#include <vector>
#include <cstring>
#include <iostream>
#include <algorithm>
#include <unordered_map>

namespace ul2 {
  struct field {
    strview name;
    strview type;

    ui64 offset;
    ui64 size;
    ui64 alignment;
    bool isprim{true};
  };

  struct field_decl {
    strview name;
    strview type;
  };

  struct structure {
    str name;
    std::unordered_map<strview, field> fields;

    ui64 size;
    ui64 alignment;
  };

  struct tpinfo {
    ui64 size;
    ui64 alignment;
    bool isprim{true};
  };

  constexpr ui64 align_up(const ui64 &offset, const ui64 &alignment) {
    return (offset + alignment - 1) / alignment * alignment;
  }

  local std::unordered_map<strview, tpinfo> typereg = {
    {"i8", {sizeof(i8), alignof(i8)}},
    {"i16", {sizeof(i16), alignof(i16)}},
    {"i32", {sizeof(i32), alignof(i32)}},
    {"i64", {sizeof(i64), alignof(i64)}},
    {"ui8", {sizeof(ui8), alignof(ui8)}},
    {"ui16", {sizeof(ui16), alignof(ui16)}},
    {"ui32", {sizeof(ui32), alignof(ui32)}},
    {"ui64", {sizeof(ui64), alignof(ui64)}},
    {"void*", {sizeof(void *), alignof(void *)}},
    {"ptr", {sizeof(void *), alignof(void *)}},
    {"char", {sizeof(char), alignof(char)}},
    {"bool", {sizeof(bool), alignof(bool)}},
    {"int", {sizeof(int), alignof(int)}},
    {"long", {sizeof(long), alignof(long)}},
    {"longlong", {sizeof(long long), alignof(long long)}},
    {"short", {sizeof(short), alignof(short)}},
    {"double", {sizeof(double), alignof(double)}},
    {"float", {sizeof(float), alignof(float)}},
    {"longdouble", {sizeof(long double), alignof(long double)}},
  };

  local tpinfo gettype(const strview &view) {
    if (!typereg.contains(view)) {
      if (trim(view).ends_with('*')) return typereg["void*"];
      return typereg["int"];
    }

    return typereg[view];
  }

  local void declare(const strview &name, const structure &stru) {
    typereg[name] = tpinfo{
      .size = stru.size,
      .alignment = stru.alignment,
      .isprim = false,
    };
  }

  local structure layout_struct(const strview &name, const std::vector<field_decl> &declarations) {
    structure result{
      .name = str(name),
      .size = 0,
      .alignment = 1,
    };

    ui64 offset = 0;

    for (const auto &decl: declarations) {
      tpinfo type = gettype(decl.type);

      offset = align_up(offset, type.alignment);

      result.fields[decl.name] = {
        .name = decl.name,
        .type = decl.type,
        .offset = offset,
        .size = type.size,
        .alignment = type.alignment,
        .isprim = type.isprim,
      };

      offset += type.size;
      result.alignment = std::max(result.alignment, type.alignment);
    }

    result.size = align_up(offset, result.alignment);

    return result;
  }

  local structure parse_struct_decl(lua_State *L, const strview &name) {
    std::vector<field_decl> fields{};
    lua_pushnil(L);

    while (lua_next(L, 2)) {
      if (lua_isstring(L, -2)) {
        // -2: key, -1: val
        const char *name = luaL_checkstring(L, -2);
        const char *type = luaL_checkstring(L, -1);

        if (!typereg.contains(type)) luaL_error(L, "%s: unknown type '%s'", __func__, type);

        fields.push_back(field_decl{
          .name = name,
          .type = type,
        });
      } /** TODO:? idk if i shall make him yell the fuck out when it ain't a string. */

      lua_pop(L, 1);
    }

    structure stru = layout_struct(name, fields);
    declare(name, stru);
    return stru;
  }

  local void copy_bytes_from_luastack(lua_State *L, ui8 *dest, ui64 len, const strview &name) {
    switch (lua_type(L, 3)) {
      case LUA_TNUMBER: {
        auto src = lua_tointeger(L, 3);
        memcpy(dest, &src, len);
        break;
      }
      case LUA_TBOOLEAN: {
        ui8 src = lua_toboolean(L, 3);
        memcpy(dest, &src, std::min((ui64)sizeof(src), (ui64) len));
        break;
      }
      case LUA_TSTRING: {
        size_t srclen;
        const char *src = lua_tolstring(L, 3, &srclen);
        memcpy(dest, src, std::min(len, (ui64) srclen));
        break;
      }
      case LUA_TNIL: {
        std::fill(dest, dest + len, 0);
        break;
      }
      default: {
        luaL_error(L, "%s: __newindex() called with an unsupported type!", name.data());
      }
    }
  }

  local int l_sizeof(lua_State *L) {
    const char *tpname = "";

    if (lua_isstring(L, 1)) {
      tpname = lua_tostring(L, 1);
    } else if (lua_istable(L, 1) || lua_isuserdata(L, 1)) {
      lua_getfield(L, 1, "__typename");
      tpname = lua_tostring(L, -1);
    } else if (lua_istable(L, 1) || lua_isuserdata(L, 1)) {
      lua_getfield(L, 1, "__typename");

      if (!lua_isstring(L, -1)) {
        lua_pop(L, 1);
        lua_pushnil(L);
        return 1;
      }

      const char *s = lua_tostring(L, -1);
      tpname = s;

      lua_pop(L, 1);
    } else {
      lua_pushnil(L);
      return 1;
    }

    if (!typereg.contains(tpname)) lua_pushnil(L);
    else lua_pushinteger(L, typereg[tpname].size);
    return 1;
  }

  local int l_alignof(lua_State *L) {
    const char *tpname = luaL_checkstring(L, 1);

    if (!typereg.contains(tpname)) {
      lua_pushinteger(L, -1);
    } else {
      lua_pushinteger(L, typereg[tpname].alignment);
    }

    return 1;
  }

  local int l_bytesof(lua_State *L) {
    auto size = luaL_checkinteger(L, 1);
    if (lua_isuserdata(L, 2)) {
      auto data = (char*)lua_touserdata(L, 2);
      lua_pushlstring(L, data, size);
    } else if (lua_isinteger(L, 2)) {

    }

    return 1;
  }

  /**
   * @brief Declares a C-like struct.
   *
   * arg#1: string (name)
   * arg#2: table (structdecl)
   */
  local int l_struct(lua_State *L) {
    std::cout << __func__ << std::endl;
    size_t len;
    std::cout << "len" << std::endl;
    strview code(luaL_checklstring(L, 1, &len), len);

    // Parse the declaration first.
    std::cout << "parsing...?????" << std::endl;
    structure parsed = parse_struct_decl(L, code);
    std::cout << "parsing...OK LOL" << std::endl;

    /*
     * IMPORTANT:
     *
     * parsed contains strviews which point at strings owned by Lua.
     * We cannot let our callbacks depend on those strings staying alive.
     *
     * So we make our own copies of every string used by the structure.
     */
    std::cout << "owning lol stfu" << std::endl;
    struct owned_structure {
      structure stru;
      std::vector<str> strings;

      owned_structure(structure src) : stru(std::move(src)) {
        strings.reserve(1 + stru.fields.size() * 2);
        strings.emplace_back(stru.name.data());
        stru.name = strings.back();

        /*
         * The fields currently contain strviews pointing into Lua.
         *
         * We rebuild the field map so every strview points into
         * our owned strings instead.
         */
        std::unordered_map<strview, field> new_fields;
        new_fields.reserve(stru.fields.size());

        for (const auto &[_, old_field]: stru.fields) {
          strings.emplace_back(old_field.name.data());
          strview field_name = strings.back();

          strings.emplace_back(old_field.type.data());
          strview field_type = strings.back();

          field new_field{
            .name = field_name,
            .type = field_type,
            .offset = old_field.offset,
            .size = old_field.size,
            .alignment = old_field.alignment,
            .isprim = old_field.isprim,
          };

          new_fields.emplace(field_name, new_field);
        }

        stru.fields = std::move(new_fields);
      }
    };

    /*
     * Keep the entire thing alive by putting it inside the callback's
     * captured state.
     *
     * The lambda owns `owned`, so all the strviews remain valid for as
     * long as the callback exists.
     */
    auto owned = std::make_shared<owned_structure>(std::move(parsed));

    auto __index = [owned](lua_State *L, ui8 *self, const char *key) -> int {
      const structure &stru = owned->stru;
      if (strcmp(key, "__typename") == 0) {
        lua_pushlstring(L, owned->stru.name.data(), owned->stru.name.size());
        return 1;
      } else if (strcmp(key, "__typesize") == 0) {
        lua_pushinteger(L, owned->stru.size);
        return 1;
      } else if (strcmp(key, "__typealign") == 0) {
        lua_pushinteger(L, owned->stru.alignment);
        return 1;
      } else if (!stru.fields.contains(key)) {
        lua_pushnil(L);
        return 1;
      }

      const auto &field = stru.fields.at(key);

      if (field.isprim) {
        const ui64 beg = field.offset;
        lua_Integer dst = 0;
        std::memcpy(&dst, self + beg, std::min(sizeof(dst), static_cast<size_t>(field.size)));
        lua_pushinteger(L, dst);
      } else {
        lua_pushnil(L);
      }

      return 1;
    };

    auto __newindex = [owned](lua_State *L, ui8 *self, const char *key) -> int {
      const structure &stru = owned->stru;
      if (!stru.fields.contains(key)) {
        return luaL_error(L, "no such field '%s' in base '%s'", key, stru.name.data());
      }

      const auto &field = stru.fields.at(key);

      if (field.isprim) {
        copy_bytes_from_luastack(L, self + field.offset, field.size, stru.name);
      } else {
        return luaL_error(L, "%s: wait! I don't support this yet!", stru.name.data());
      }

      return 0;
    };

    auto __new = [owned](lua_State *L) -> int {
      const structure &stru = owned->stru;

      ui8 *strubuf = static_cast<ui8 *>(lua_newuserdata(L, stru.size));

      /*
       * Initialize the whole struct.
       *
       * This also prevents uninitialized padding/fields from containing
       * random garbage when Lua accesses them.
       */
      std::memset(strubuf, 0, stru.size);

      luaL_getmetatable(L, stru.name.data());
      lua_setmetatable(L, -2);

      return 1;
    };

    using T__index = decltype(__index);
    using T__newindex = decltype(__newindex);
    using T__new = decltype(__new);

    /*
     * These are heap allocated because the Lua C closures only receive
     * a light-userdata pointer to them.
     */
    auto *_index = new T__index(std::move(__index));
    auto *_newindex = new T__newindex(std::move(__newindex));
    auto *_new = new T__new(std::move(__new));

    lua_getglobal(L, "fli");
    lua_getfield(L, -1, "c");

    if (!luaL_newmetatable(L, owned->stru.name.data())) {
      return luaL_error(L, "%s: can't create a metatable", owned->stru.name.data());
    }

    lua_pushlightuserdata(L, _index);
    lua_pushcclosure(L, [](lua_State *L) -> int {
      auto *fn = static_cast<T__index *>(lua_touserdata(L, lua_upvalueindex(1)));

      return (*fn)(L, static_cast<ui8 *>(lua_touserdata(L, 1)), lua_tostring(L, 2));
    }, 1);

    lua_setfield(L, -2, "__index");
    lua_pushlightuserdata(L, _newindex);

    lua_pushcclosure(L, [](lua_State *L) -> int {
      auto *fn = static_cast<T__newindex *>(lua_touserdata(L, lua_upvalueindex(1)));
      return (*fn)(L, static_cast<ui8 *>(lua_touserdata(L, 1)), lua_tostring(L, 2));
    }, 1);

    lua_setfield(L, -2, "__newindex");
    lua_pushlightuserdata(L, _new);

    lua_pushcclosure(L, [](lua_State *L) -> int {
      auto *fn = static_cast<T__new *>(lua_touserdata(L, lua_upvalueindex(1)));

      return (*fn)(L);
    }, 1);

    lua_setfield(L, -2, "new");
    
    /*
     * fli.c.MyStruct = metatable
     */
    lua_pushvalue(L, -1);
    lua_setfield(L, -3, owned->stru.name.data());

    lua_remove(L, -2);

    return 1;
  }

  local luaL_Reg libflic[] = {
    {"struct", l_struct},
    {"sizeof", l_sizeof},
    {"alignof", l_alignof},
    {"bytesof", l_bytesof},
    {NULL, NULL}
  };

  void open_libflic(lua_State *L) {
    lua_getglobal(L, "fli");
    luaL_newlib(L, libflic);
    lua_setfield(L, -2, "c");

    lua_getfield(L, -1, "c");

    for (const auto &[k,v]: typereg) {
      lua_pushstring(L, k.data());
      lua_setfield(L, -2, k.data());
    }

    lua_pop(L, 1);
    lua_pop(L, 1);
  }
}

/**
 * @note Self Lua manual over some Lua's C API functions.
 *
 * __index function gets called with 2 arguments:
 *  * #1 (?) object itself.
 *  * #2 (str) key.
 */
