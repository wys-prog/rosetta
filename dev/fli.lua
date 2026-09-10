local fli = _G.fli or {}

---@class fli.dll
---@class fli.fun

---Opens a shared library and returns a C void* pointer casted into an integer.
---@param path string
---@return fli.dll?
function fli.dlopen(path)end

---Loads a C symbol from the given shared library.
---@param dll fli.dll
---@param funcname string
---@return fli.fun?
function fli.loadf(dll, funcname)end

---Closes the given shared library.
---@param dll fli.dll
function fli.close(dll)end

---Calls an unmanaged C function with given bytes.
---@param fun fli.fun
---@param retlen integer
---@param bytes string
---@return string
function fli.callum(fun, retlen, bytes)return''end

---Returns the last error that happened in fli.
---@return string
function fli.error()return ''end

return fli