local fli = require('dev.fli')

local dll = fli.dlopen('abi')

if not dll then
  error('dll is not open! ' .. fli.error())
end

local fun = fli.loadf(dll, 'printvec2')

if not fun then
  error('fun is not open! ' .. fli.error())
end

local vec2 = fli.c.struct('vec2', {
  x = fli.c.i32,
  y = fli.c.i32,
})

local vec = vec2.new('MELOMELO')

--local printvec2 = assert(fli.cplus.load(dll, 'printvec2', fli.c.void, vec2))
--printvec2(vec)

local bytes = fli.c.bytesof(vec.__typesize, vec)
print(('bytes "%s"'):format(bytes))
fli.callum(fun, 0, bytes)