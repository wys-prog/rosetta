_G.fli = _G.fli or (function()
  warn('_G.fli is nil! (did you launched this file with Rosetta?)')
  return {}
end)()

---@class fli.dll
---@class fli.fun

---@class fli
---Opens a shared library and returns a C void* pointer casted into an integer.
---@field dlopen fun(path: string): fli.dll?
---Loads a C symbol from the given shared library.
---@field loadf fun(dll: fli.dll, sym: string): fli.fun?
---Closes the given shared library.
---@field dlclose fun(dll: fli.dll)
---Calls an unmanaged C function with given bytes.
---@field callum fun(fun: fli.fun, retlen: integer, bytes: string): string
---Returns the last error that happened in fli.
---@field error fun(): string
---@field c fli.c

---@class fli.c
---Creates a C-like structure at runtime.
---@generic T
---@field struct fun(name: string, impl: T): { new: fun(...): T }
---Returns bytes of an element.
---@field bytesof fun(size: integer, e: any): string
---Returns the size of an element in bytes.
---@field sizeof fun(e: any): integer?
---Returns the alignas of an element in bytes.
---@field alignof fun(e: any): integer?
---@field i8 string
---@field ui8 string
---@field i16 string
---@field ui16 string
---@field i32 string
---@field ui32 string
---@field i64 string
---@field ui64 string
---@field char string
---@field bool string
---@field ptr string
---@field void* string
---@field short string
---@field int string
---@field long string
---@field longlong string
---@field void string

---@class fli
local fli = _G.fli or {}

---@class fli.cplus
local plus = {}

---Loads an unmanaged C-raw function and returns a Lua usable function. The returned function should be called from Lua.
---@generic Args..., Ret
---@param dll fli.dll
---@param name string
---@param ret Ret
---@param ... Args...
---@return (fun(...: Args...):Ret)|nil, string?
plus.load = function (dll, name, ret, ...)
  local fun = fli.loadf(dll, name)

  if not fun then
    return nil, ("cannot load symbol '%s' from dll '%d': %s"):format(
      name, dll, fli.error()
    )
  end

  return function (...)
    local bytes = ''
    for _, value in ipairs({...}) do
      bytes = bytes .. fli.c.bytesof(value.__typesize, value)
      print('bytes:', bytes)
    end

    fli.callum(fun, fli.c.sizeof(ret) or 4, bytes)
  end
end


fli.cplus = plus

return fli