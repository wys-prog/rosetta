local fli = require('dev.fli')

local dll = assert(fli.dlopen('tests/abi'), fli.error())
local fun = assert(fli.loadf(dll, 'printvec2'), fli.error())
local fun2 = assert(fli.loadf(dll, 'print8bytes'), fli.error())

local vec2 = fli.c.struct('vec2', {
  x = fli.c.i32,
  y = fli.c.i32,
})

local vec = vec2.new('HAHAMELO')

--local printvec2 = assert(fli.cplus.load(dll, 'printvec2', fli.c.void, vec2))
--printvec2(vec)

local bytes = fli.c.bytesof(vec.__typesize, vec)
print(('bytes "%s"'):format(bytes))
--fli.callum(fun, 0, bytes)
fli.callum(fun2, 0, bytes)
