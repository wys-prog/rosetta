local bin = arg[1]
local objdump = arg[3] or "llvm-objdump"

if not bin then
  io.write('No such file! Enter a filepath\n> ')
  bin = io.read('l')
end

---@param prog string
---@param ... unknown
local function makecmd(prog, ...)
  local s = prog .. ' '

  for i, arg in ipairs({ ... }) do
    s = s .. '"' .. tostring(arg) .. '" '
  end

  return s
end

local pop = tostring(assert(io.popen(makecmd(objdump,
  "-d", "-M",
  "intel", "--no-show-raw-insn", "--no-leading-addr",
  bin or 'a.out'
)), "can't launch " .. objdump .. " process!")
    :read("a"))
    :gsub("^.-Disassembly of section .text:%s*", "")

local labels = {}

for label in pop:gmatch("<([^>]+)>:") do
  labels[#labels + 1] = label
end

local out, count = pop:gsub('<', ''):gsub('>', '')
local header = '.intel_syntax noprefix\n\n'

for index, value in ipairs(labels) do
  header = header .. '.global ' .. value .. '\n'
end

out = header .. '\n\n# text begin (decompiled)\n\n' .. out

io.open(arg[2] or 'out.s', "w")
  :write(out)
  :close()