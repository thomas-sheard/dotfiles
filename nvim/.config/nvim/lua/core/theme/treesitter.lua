local p = require("core.theme.palette")

return {

  -- comments
  ["@comment"] = {
    fg = p.foreground_muted,
    italic = true,
  },

  -- strings
  ["@string"] = {
    fg = p.green,
  },

  ["@string.escape"] = {
    fg = p.cyan,
  },

  ["@string.special"] = {
    fg = p.cyan,
  },

  -- values
  ["@number"] = {
    fg = p.orange,
  },

  ["@boolean"] = {
    fg = p.orange,
  },

  ["@constant"] = {
    fg = p.orange,
  },

  ["@constant.builtin"] = {
    fg = p.orange,
  },

  -- functions
  ["@function"] = {
    fg = p.blue,
    bold = true,
  },

  ["@function.call"] = {
    fg = p.blue,
  },

  ["@function.method"] = {
    fg = p.blue,
  },

  ["@function.method.call"] = {
    fg = p.blue,
  },

  -- structure
  ["@keyword"] = {
    fg = p.purple,
    bold = true,
  },

  ["@keyword.return"] = {
    fg = p.purple,
    bold = true,
  },

  ["@keyword.function"] = {
    fg = p.purple,
    bold = true,
  },

  -- types
  ["@type"] = {
    fg = p.magenta,
  },

  ["@type.builtin"] = {
    fg = p.magenta,
  },

  -- variables
  ["@variable"] = {
    fg = p.foreground,
  },

  ["@variable.builtin"] = {
    fg = p.cyan,
  },

  -- properties / fields
  ["@property"] = {
    fg = p.foreground,
  },

  ["@field"] = {
    fg = p.foreground,
  },

  -- operators
  ["@operator"] = {
    fg = p.foreground,
  },

  -- punctuation
  ["@punctuation.bracket"] = {
    fg = p.foreground_muted,
  },

  ["@punctuation.delimiter"] = {
    fg = p.foreground_muted,
  },

}
