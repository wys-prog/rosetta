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
---@field asm fli.asm

---@class fli.c
---@field struct fun(name: string, impl: table<string, string>)
---@field bytesof fun(size: integer, e: any): string
---@field sizeof fun(e): integer?
---@field alignof fun(e): integer?
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

---@class fli.asm
---Maybe (idk if this would be useful)
---@field castin fun(int: integer, nsize: integer): integer

---@class fli
local docs = _G.fli or {}

return docs