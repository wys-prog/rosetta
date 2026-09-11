local fli = require('dev.fli')

if false then
  local dll = fli.dlopen('abi')
  if not dll then
    error('dll not loaded: ' .. fli.error())
  end
  
  local printvec2 = fli.loadf(dll, 'printvec2')
  
  if not printvec2 then
    error('fun not loaded: ' .. fli.error())
  end
end

local dump = function (t)
  if type(t) ~= "table" then return end
  for key, value in pairs(t) do
    if type(value) == "table" then
      print(key, value)
      for index, value in pairs(value) do
        print(" ", index, value)
      end
    end
  end
end

local thing = fli.c.struct('vec2', {
  x = fli.c.ui16,
  y = fli.c.ui16,
})
print(thing)

local vec = fli.c.vec2.new()
vec.x = 0xFFFF
vec.y = 0xFFFF

fli.callum(printvec2, 0, fli.c.bytesof(4, vec))

fli.dlclose(dll)

return {
  dump
}