local M = {}
local function rgb(h) h = h:gsub("#", "")
  return tonumber(h:sub(1,2),16), tonumber(h:sub(3,4),16), tonumber(h:sub(5,6),16) end
function M.blend(fg, bg, a) -- a = 0..1 amount of fg
  local r1,g1,b1 = rgb(fg); local r2,g2,b2 = rgb(bg)
  return string.format("#%02x%02x%02x",
    r1*a + r2*(1-a) + .5, g1*a + g2*(1-a) + .5, b1*a + b2*(1-a) + .5)
end
return M
