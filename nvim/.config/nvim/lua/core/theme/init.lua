local M = {}

local function resolve(v, roles, name)
  if type(v) == "table" then
    if v[1] == nil then return v end                      -- raw spec
    local spec = vim.deepcopy(assert(roles[v[1]], "unknown role " .. v[1]))
    for k, val in pairs(v) do if type(k) == "string" then spec[k] = val end end
    return spec                                            -- role + style
  end
  if roles[v] then return roles[v] end
  if v:match("^%l") then error(("unknown role %q for %s"):format(v, name)) end
  return { link = v }                                      -- Capitalised or @ = link
end

function M.load()
  vim.cmd("hi clear")
  vim.g.colors_name = "system"
  vim.o.termguicolors = true

  local roles  = require("core.theme.roles")
  local groups = vim.tbl_extend("force",
    require("core.theme.ui"), require("core.theme.groups"), require("core.theme.plugins"))

  for name, v in pairs(groups) do
    vim.api.nvim_set_hl(0, name, resolve(v, roles, name))
  end
end

return M
