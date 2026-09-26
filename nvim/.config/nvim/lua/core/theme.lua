local p = require("core.palette")

require('code-2026').setup({
  styles = {
    comments = { italic = true },
    keywords = {},
    conditionals = {},
    functions = {},
    methods = {},
    variables = {},
    builtins = { italic = false },
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
    -- surfaces
    bg        = p.background,
    bg_alt    = p.background_alt,
    bg_menu   = p.background,
    bg_line   = p.background,
    bg_widget = p.background_dark,
    bg_select = p.selection,
    bg_match  = p.selection,

    border     = p.border,
    border_alt = p.border,

    -- text
    fg       = p.foreground,
    fg_alt   = p.foreground,
    fg_dim   = p.foreground_muted,
    fg_muted = p.foreground_muted,
    white    = p.foreground,

    -- accents
    accent     = p.cyan,
    accent_dim = p.foreground_muted,
    accent_alt = p.magenta,

    -- syntax
    comment  = p.foreground_muted,
    variable = p.foreground,

    -- green: text / strings
    string = p.green,
    regex  = p.green,

    -- orange: concrete values
    number   = p.orange,
    constant = p.orange,
    member   = p.foreground,

    -- purple: language structure / flow
    keyword = p.purple,
    module  = p.purple,

    -- blue: things that do things
    func  = p.blue,
    macro = p.blue,

    -- yellow: information / things to notice
    type = p.yellow,
    tag  = p.yellow,

    -- cyan: subtle distinctions / operators / contextual things
    operator = p.cyan,
    attr     = p.cyan,

    -- magenta: special cases
    annotation = p.magenta,
    param      = p.foreground,
    preproc    = p.foreground_muted,

    -- diagnostics
    err   = p.red,
    warn  = p.yellow,
    info  = p.blue,
    hint  = p.cyan,
    ok    = p.green,
    debug = p.foreground_muted,

    -- diff
    diff_add    = p.green,
    diff_add_fg = p.background,

    diff_del    = p.red,
    diff_del_fg = p.background,

    diff_chg    = p.yellow,
    diff_chg_fg = p.background,

    diff_text = p.foreground,

  },
})

-- for some reason doesn't actually expose 'code-2026'? use dark-2026 instead
vim.cmd.colorscheme('dark-2026')
