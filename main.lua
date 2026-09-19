local fli = require('dev.fli')

local dll = fli.dlopen('vec2')

if not dll then
  error('dll is not open! ' .. fli.error())
else
  print('loaded the dll !! yessss')
end

local fun = fli.loadf(dll, 'printvec2')

if not fun then
  error('fun is not open! ' .. fli.error())
else
  print('loaded the function now yesss')
end

print('creating vec2 type!!')
local vec2 = fli.c.struct('vec2', {
  x = fli.c.i32
})
print('created vec2 type!!')

local vec = vec2.new()

print('sizeof(vec):', fli.c.sizeof(vec2))
fli.callum(fun, 0, fli.c.bytesof(fli.c.sizeof(vec) or 4, vec))

fli.callum(fun, 0, 'MELO')