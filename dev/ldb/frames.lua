---@class frame
---@field info debuginfo
---@field parent frame?
---@field children frame[]
---@field returned boolean
---@field depth integer

local frame = {}
frame.__index = frame

---@param info debuginfo
---@param parent frame?
---@param depth integer?
---@return frame
function frame.new(info, parent, depth)
  return setmetatable({
    info = info,
    parent = parent,
    children = {},
    returned = false,
    depth = depth or 0,
  }, frame)
end

---@param info debuginfo
---@return string
function frame.syminfo(info)
  local args

  if info.isvararg then
    args = "..."
  else
    args = tostring(info.nparams or "?")
  end

  return ("%s(%s)\t%s:%d"):format(
    info.name or "?",
    args,
    info.source or "?",
    info.currentline
  )
end

---@param self frame
---@param indent integer?
---@return string
function frame:tostring(indent)
  indent = indent or 0

  local prefix = string.rep("  ", indent)

  local status = ""
  if self.returned then
    status = " [returned]"
  end

  local str = prefix .. frame.syminfo(self.info) .. status .. "\n"

  for _, child in ipairs(self.children) do
    ---@diagnostic disable-next-line: undefined-field
    str = str .. child:tostring(indent + 1)
  end

  return str
end

function frame:__tostring()
  return self:tostring(0)
end

return frame