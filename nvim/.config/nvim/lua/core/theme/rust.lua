local p = require("core.theme.palette")

return {

    -- general syntax

    ["@punctuation.special"] = {
        fg = p.red,
    },

    ["@punctuation.delimiter"] = {
        fg = p.foreground_muted,
    },

    ["@punctuation.bracket"] = {
        fg = p.foreground_muted,
    },

    ["@operator"] = {
        fg = p.cyan,
    },

    -- keywords / control flow

    ["@keyword"] = {
        fg = p.purple,
    },

    ["@keyword.import"] = {
        fg = p.magenta,
        -- bold = true,
    },

    ["@keyword.repeat"] = {
        fg = p.purple,
    },

    ["@keyword.conditional"] = {
        fg = p.purple,
    },

    -- values / identifiers

    ["@constant"] = {
        fg = p.foreground,
    },

    ["@variable.member"] = {
        fg = p.foreground,
    },

    ["@function.call"] = {
        fg = p.blue,
    },

    ["@number"] = {
        fg = p.orange,
    },

    ["@string"] = {
        fg = p.green,
    },

    ["@boolean"] = {
        fg = p.orange,
        bold = true,
    },

    -- error / diagnostic-ish captures

    ["@error"] = {
        fg = p.error,
        undercurl = true,
        sp = p.error,
    },

    -- rust lsp

    ["@lsp.type.macro.rust"] = {
      fg = p.blue,
    },


    ["@lsp.type.typeAlias.rust"] = {
      fg = p.magenta,
    },

    ["rustSigil"] = {
      fg = p.yellow
    },

}
