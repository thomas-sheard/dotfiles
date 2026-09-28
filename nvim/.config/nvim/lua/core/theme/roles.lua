local p = require("core.theme.palette")

return {
  none      = {},
  text      = { fg = p.foreground },
  muted     = { fg = p.foreground_muted },
  comment   = { fg = p.foreground_muted, italic = true },

  func      = { fg = p.blue },     -- things that do things
  keyword   = { fg = p.purple },   -- structure, flow control
  value     = { fg = p.orange },   -- concrete values
  string    = { fg = p.green },
  type      = { fg = p.yellow },
  operator  = { fg = p.cyan },
  builtin   = { fg = p.cyan },     -- rare, contextual
  special   = { fg = p.magenta },  -- per-language exceptions only

  error     = { fg = p.error },
  warn      = { fg = p.warning },
  info      = { fg = p.info },
  ok        = { fg = p.success },
}
