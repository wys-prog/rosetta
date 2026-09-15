-- libldb: Lua DeBug library

if not debug then
  debug = require('debug')
  if not debug then
    error('debuglib is required!')
  end
end

local ldb = {
  dev = 'wys'
}
---@class ldb.proc
---@field program string|file*
---@field breakpoints integer[]
---@field running boolean
ldb.proc = {}
ldb.proc.__index = ldb.proc

---@param program string|file*
ldb.proc.new = function(program)
  
end


return ldb