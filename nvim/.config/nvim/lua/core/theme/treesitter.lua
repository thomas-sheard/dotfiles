local p = require("core.theme.palette")

return {
    -- comments
    ["@comment"] = {
        fg = p.foreground_muted,
        italic = true,
    },

    -- Strings
    ["@string"] = {
        fg = p.green,
    },

    ["@string.escape"] = {
        fg = p.cyan,
    },

    ["@string.special"] = {
        fg = p.cyan,
    },

    -- numbers / constants
    ["@number"] = {
        fg = p.orange,
    },

    ["@boolean"] = {
        fg = p.orange,
        bold = true,
    },

    ["@constant"] = {
        fg = p.cyan,
    },

    ["@constant.builtin"] = {
        fg = p.cyan,
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

    -- keywords
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
        fg = p.yellow,
    },

    ["@type.builtin"] = {
        fg = p.yellow,
        italic = true,
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
        fg = p.cyan,
    },

    ["@field"] = {
        fg = p.cyan,
    },

    -- operators
    ["@operator"] = {
        fg = p.cyan,
    },

    -- punctuation
    ["@punctuation.bracket"] = {
        fg = p.foreground_muted,
    },

    ["@punctuation.delimiter"] = {
        fg = p.foreground_muted,
    },
}
