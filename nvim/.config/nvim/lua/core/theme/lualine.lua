local p = require("core.theme.palette")

return {
    normal = {
        a = {
            fg = p.background,
            bg = p.blue,
            gui = "bold",
        },
        b = {
            fg = p.foreground,
            bg = p.background_alt,
        },
        c = {
            fg = p.foreground_muted,
            bg = p.background,
        },
    },

    insert = {
        a = {
            fg = p.background,
            bg = p.green,
            gui = "bold",
        },
    },

    visual = {
        a = {
            fg = p.background,
            bg = p.purple,
            gui = "bold",
        },
    },

    replace = {
        a = {
            fg = p.background,
            bg = p.orange,
            gui = "bold",
        },
    },

    command = {
        a = {
            fg = p.background,
            bg = p.yellow,
            gui = "bold",
        },
    },

    inactive = {
        a = {
            fg = p.foreground_muted,
            bg = p.background,
        },
        b = {
            fg = p.foreground_muted,
            bg = p.background,
        },
        c = {
            fg = p.foreground_muted,
            bg = p.background,
        },
    },
}
