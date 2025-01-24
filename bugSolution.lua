local function foo(t)
  local keys = {}  --Collect keys first
  for k in pairs(t) do
    table.insert(keys, k)
  end
  table.sort(keys) --Sort keys for consistent order
  for _, k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)