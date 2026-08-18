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
    },

    Constant = {
        fg = p.cyan,
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

    Special = {
        fg = p.red,
        bg = p.background,
    },

    Function = {
        fg = p.blue,
    },

    Keyword = {
        fg = p.purple,
    },

    Type = {
        fg = p.yellow,
    },

    Operator = {
        fg = p.cyan,
    },

    Identifier = {
        fg = p.foreground,
    },

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

    Title = {
      fg = p.blue,
      bold = true,
    },

    ModeMsg = {
        fg = p.foreground_muted,
    },

    MoreMsg = {
        fg = p.info,
    },

}
