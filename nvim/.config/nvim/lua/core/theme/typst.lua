local p = require("core.theme.palette")

return {
    -- general syntax

    ["@comment"] = {
        fg = p.foreground_muted,
        italic = true,
    },

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

    -- headings
    -- Cyan is deliberately concentrated here.

    ["@markup.heading"] = {
        fg = p.cyan,
        bold = true,
    },

--    ["@markup.heading.1"] = {
--        fg = p.cyan,
--        bold = true,
--    },
--
--    ["@markup.heading.2"] = {
--        fg = p.cyan,
--        bold = true,
--    },
--
--    ["@markup.heading.3"] = {
--        fg = p.cyan,
--        bold = true,
--    },
--
--    ["@markup.heading.4"] = {
--        fg = p.cyan,
--        bold = true,
--    },
--
--    ["@markup.heading.5"] = {
--        fg = p.cyan,
--        bold = true,
--    },
--
--    ["@markup.heading.6"] = {
--        fg = p.foreground_muted,
--        italic = true,
--    },

    -- inline markup

    ["@markup.strong"] = {
        fg = p.foreground,
        bold = true,
    },

    ["@markup.italic"] = {
        fg = p.foreground,
        italic = true,
    },

    ["@markup.quote"] = {
        fg = p.foreground_muted,
        italic = true,
    },

    -- links / references
    -- Keep these blue rather than spending cyan here.

    ["@markup.link"] = {
        fg = p.blue,
        underline = false,
    },

    ["@markup.link.label"] = {
        fg = p.blue,
        underline = false,
    },

    ["@markup.link.url"] = {
        fg = p.blue,
        underline = false,
        italic = true,
    },

    -- raw / code

    ["@markup.raw"] = {
        fg = p.purple,
        bg = p.background,
    },

    ["@markup.raw.block"] = {
        fg = p.purple,
        bg = p.background,
    },

    ["@label"] = {
        fg = p.purple,
        bold = true,
    },

    -- mathematics

    ["@markup.math"] = {
        fg = p.blue,
        -- bg = p.background_alt,
    },

    -- spell

    ["@spell"] = {
        -- fg = p.foreground,
    },

    -- error / diagnostic-ish captures

    ["@error"] = {
        fg = p.error,
        undercurl = true,
        sp = p.error,
    },
}
