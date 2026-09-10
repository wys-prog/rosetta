local nm = "nm"

---@param s any
---@return string
local function quote(s)
  return '"' .. tostring(s) .. '"'
end

---@param progname string
---@param ... unknown
---@return string
local function prog(progname, ...)
  local args = { ... }
  local cmd = progname .. ' '

  for _, value in ipairs(args) do
    cmd = cmd .. quote(value) .. ' '
  end

  return cmd
end

---@param line string
---@param table table
---@param mangled boolean
local function parse(line, table, mangled)
  local endp = line:find(' ', 2)
  local addr = line:sub(0, endp - 1)
  local char = line:sub(endp + 1, endp + 1)
  local name = line:sub(endp + 3)

  if not table[addr] then table[addr] = {} end

  if mangled then table[addr].mangled = name
  else table[addr].demangled = name end
  table[addr].char = char
  table[addr].addr = addr
end

---@param file string
---@param verbose boolean?
---@return { mangled: string, demangled: string, char: string, addr: string, ret: string, args: string[], sign: string }[]
local function parse_cxx_object(file, verbose)
  local filem = io.popen(prog(nm, file), "r")
  local filed = io.popen(prog(nm, '-C', file), "r")

  if not filem or not filed then
    error('can not open one of the nm processes! (byebye)')
  end

  local symbols = {}
  if verbose then print('parsing mangled names...') end
  for line in filed:lines("l") do
    parse(line, symbols, false)
  end

  if verbose then print('parsing demangled names...') end
  for line in filem:lines("l") do
    parse(line, symbols, true)
  end

  return symbols
end

local function main()
  local file = arg[1]

  if not file then
    io.write('enter a file to dump: ')
    file = io.read("l")
  end

  local parsed = parse_cxx_object(file, true)
  for key, value in pairs(parsed) do
    print(key .. ':', value.char)
  end
end

main()

return {
  main,
  parse_cxx_object,
  parse,
  prog,
  quote,
}