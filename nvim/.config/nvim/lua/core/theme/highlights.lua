local p = require("core.theme.palette")

return {
    Normal = {
        fg = p.foreground,
        bg = p.background,
    },

    NormalFloat = {
        fg = p.foreground,
        bg = p.background_alt,
    },

    Cursor = {
        fg = p.background,
        bg = p.cursor,
    },

    Visual = {
        bg = p.selection,
    },

    Comment = {
        fg = p.foreground_muted,
        italic = true,
    },

    -- concrete values
    Constant = {
        fg = p.orange,
    },

    String = {
        fg = p.green,
    },

    Number = {
        fg = p.orange,
    },

    Boolean = {
        fg = p.orange,
    },

    -- special / exceptional syntax
    Special = {
        fg = p.cyan,
        bg = p.background,
    },

    -- actions
    Function = {
        fg = p.blue,
    },

    -- language structure
    Keyword = {
        fg = p.purple,
    },

    -- semantic entities
    Type = {
        fg = p.magenta,
    },

    PreProc = {
      fg = p.magenta,
    },

    -- quiet syntax
    Operator = {
        fg = p.cyan,
    },

    Identifier = {
        fg = p.foreground,
    },

    -- errors / diagnostics
    Error = {
        fg = p.error,
    },

    WarningMsg = {
        fg = p.warning,
    },

    DiagnosticError = {
        fg = p.error,
    },

    DiagnosticWarn = {
        fg = p.warning,
    },

    DiagnosticInfo = {
        fg = p.info,
    },

    DiagnosticHint = {
        fg = p.success,
    },

    DiagnosticVirtualTextError = {
        fg = p.error,
    },

    DiagnosticVirtualTextWarn = {
        fg = p.warning,
    },

    DiagnosticVirtualTextInfo = {
        fg = p.info,
    },

    DiagnosticVirtualTextHint = {
        fg = p.success,
    },

    DiagnosticUnderlineError = {
        undercurl = true,
        sp = p.error,
    },

    DiagnosticUnderlineWarn = {
        undercurl = true,
        sp = p.warning,
    },

    DiagnosticUnderlineInfo = {
        undercurl = true,
        sp = p.info,
    },

    DiagnosticUnderlineHint = {
        undercurl = true,
        sp = p.success,
    },

    StatusLine = {
        fg = p.foreground,
        bg = p.background_alt,
    },

    StatusLineNC = {
        fg = p.foreground_muted,
        bg = p.background_alt,
    },

    WinSeparator = {
        fg = p.border,
    },

    Directory = {
        fg = p.blue,
    },

    Question = {
        fg = p.cyan,
    },

    LineNr = {
        fg = p.foreground_muted,
    },

    CursorLineNr = {
        fg = p.foreground,
        bold = true,
    },

    CursorLine = {
        bg = p.background_alt,
    },

    SignColumn = {
        bg = p.background,
    },

    FoldColumn = {
        fg = p.foreground_muted,
        bg = p.background,
    },

    Pmenu = {
        fg = p.foreground,
        bg = p.background_alt,
    },

    PmenuSel = {
        fg = p.background,
        bg = p.blue,
    },

    PmenuBorder = {
        fg = p.border,
        bg = p.background_alt,
    },

    FloatBorder = {
        fg = p.border,
        bg = p.background_alt,
    },

    Search = {
        fg = p.background,
        bg = p.cyan,
    },

    IncSearch = {
        fg = p.background,
        bg = p.blue,
    },

    MatchParen = {
        fg = p.foreground,
        bg = p.selection,
        bold = true,
    },

    -- document / markup
    Title = {
        fg = p.blue,
        bold = true,
    },

    Todo = {
      fg = p.yellow,
      bold = true,
      italic = true,
    },

    ModeMsg = {
        fg = p.foreground_muted,
    },

    MoreMsg = {
        fg = p.info,
    },

    ErrorMsg = {
        fg = p.error,
    },

    SpellBad = {
        undercurl = true,
        sp = p.red,
    },

    SpellCap = {
        undercurl = true,
        sp = p.blue,
    },

    SpellRare = {
        undercurl = true,
        sp = p.purple,
    },

    SpellLocal = {
        undercurl = true,
        sp = p.blue,
    },

    -- completion kinds
    CmpItemKind = {
        fg = p.foreground_muted,
    },

    CmpItemKindText = {
        fg = p.green,
    },

    CmpItemKindVariable = {
        fg = p.foreground,
    },

    CmpItemKindKeyword = {
        fg = p.purple,
    },

    CmpItemKindFunction = {
        fg = p.blue,
    },

    CmpItemKindMethod = {
        fg = p.blue,
    },
}
