local p = require("core.theme.palette")
local b = require("core.theme.util").blend

return {
  Normal       = { fg = p.foreground, bg = p.background },
  NormalFloat  = { fg = p.foreground, bg = p.background_dark },
  FloatBorder  = { fg = p.border,     bg = p.background_dark },
  WinSeparator = { fg = p.border },
  CursorLine   = { bg = p.background_alt },
  Visual       = { bg = p.selection },
  Cursor       = { fg = p.background, bg = p.cursor },
  Pmenu        = { fg = p.foreground, bg = p.background_alt },
  PmenuSel     = { bg = p.selection },
  LineNr       = "muted",
  Search       = { fg = p.background, bg = p.yellow },

  DiagnosticError = "error", DiagnosticWarn = "warn",
  DiagnosticInfo  = "info",  DiagnosticHint = "muted", DiagnosticOk = "ok",
  DiagnosticUnderlineError = { undercurl = true, sp = p.error },
  DiagnosticUnderlineWarn  = { undercurl = true, sp = p.warning },

  -- messages
  ModeMsg = "muted", MoreMsg = "info", Question = "info",
  WarningMsg = "warn", ErrorMsg = "error", OkMsg = "ok", StderrMsg = "error",
  MsgSeparator = { fg = p.border },
  Title = { "func", bold = true },
  Directory = "func",

  -- search
  IncSearch = { fg = p.background, bg = p.orange },
  CurSearch = "IncSearch",
  MatchParen = { "warn", bold = true },
  QuickFixLine = "Visual",

  -- quiet chrome
  NonText = "muted", EndOfBuffer = "NonText", Whitespace = "NonText", Conceal = "muted",
  SignColumn = { fg = p.foreground_muted },
  FoldColumn = "muted",
  Folded = { fg = p.foreground_muted, bg = p.background_alt },
  ColorColumn = "CursorLine", CursorColumn = "CursorLine",
  PmenuThumb = { bg = p.border },

  -- statusline / tabline / winbar fallbacks (lualine draws over these)
  StatusLine = { fg = p.foreground, bg = p.background_dark },
  StatusLineNC = { fg = p.foreground_muted, bg = p.background_dark },
  StatusLineTerm = "StatusLine", StatusLineTermNC = "StatusLineNC",
  TabLine = { fg = p.foreground_muted, bg = p.background_dark },
  TabLineFill = { bg = p.background_dark },
  WinBar = "Normal", WinBarNC = "muted",

  -- floats (title needs a bg or it's a Normal-coloured stripe on the border)
  FloatTitle = { fg = p.foreground, bg = p.background_dark, bold = true },
  FloatFooter = { fg = p.foreground_muted, bg = p.background_dark },
  FloatShadow = { bg = p.background_dark, blend = 80 },
  FloatShadowThrough = { bg = p.background_dark, blend = 100 },

  -- LSP and completion extras
  LspInlayHint = "comment", LspCodeLens = "muted", LspCodeLensSeparator = "muted",
  ComplHint = "muted", ComplHintMore = "muted", PreInsert = "muted",
  DiagnosticDeprecated = { "muted", strikethrough = true },

  -- underlines
  DiagnosticUnderlineInfo = { undercurl = true, sp = p.info },
  DiagnosticUnderlineHint = { undercurl = true, sp = p.foreground_muted },
  DiagnosticUnderlineOk   = { undercurl = true, sp = p.success },
  SpellBad   = { undercurl = true, sp = p.error },
  SpellCap   = { undercurl = true, sp = p.warning },
  SpellLocal = { undercurl = true, sp = p.info },
  SpellRare  = { undercurl = true, sp = p.foreground_muted },

  -- diffs: tinted backgrounds for buffers, roles for foreground uses
  DiffAdd     = { bg = b(p.green,  p.background, 0.15) },
  DiffChange  = { bg = b(p.yellow, p.background, 0.10) },
  DiffText    = { bg = b(p.yellow, p.background, 0.25) },
  DiffTextAdd = { bg = b(p.green,  p.background, 0.25) },
  DiffDelete  = { fg = b(p.red, p.background, 0.5), bg = b(p.red, p.background, 0.15) },
  Added = "ok", Changed = "warn", Removed = "error",
}
