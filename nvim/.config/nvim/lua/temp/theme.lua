local p = require("temp.palette")

require('code-2026').setup({
  background = 'dark',
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,

  styles = {
    comments = { italic = true },
    keywords = {},
    conditionals = {},
    functions = {},
    methods = {},
    variables = {},
    builtins = { italic = true },
    parameters = {},
    properties = {},
    types = {},
    strings = {},
    numbers = {},
    booleans = {},
    constants = {},
    operators = {},
    namespaces = {},
    macros = {},
    attributes = {},
    tags = {},
    headings = { bold = true },

    floats = 'solid',       -- 'solid' | 'transparent' | 'auto'
  },

  palette = {
	  bg = p.background,
  },

  on_colors = function(colors) end,                    -- programmatic color overrides
  highlights = {},                                     -- static highlight overrides
  on_highlights = function(highlights, colors) end,    -- programmatic highlight overrides
  plugins = {},                                        -- e.g. { telescope = false }
})

vim.cmd.colorscheme("dark-2026")

