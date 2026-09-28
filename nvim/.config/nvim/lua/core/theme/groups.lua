return {
  -- classic groups (defaults fan these out: Conditional/Repeat -> Statement, etc.)
  Comment    = "comment",
  Constant   = "value",   Number = "value", Boolean = "value",
  String     = "string",  Character = "String",
  Identifier = "text",
  Function   = "func",    Macro = "func",
  Statement  = "keyword", PreProc = "keyword",
  Operator   = "operator",
  Type       = "type",
  Special    = "builtin",
  Delimiter  = "muted",
  Error      = "error",
  Todo       = { "warn", bold = true },
  Underlined = { "text", underline = true },

  -- treesitter: deviations from the defaults only
  ["@module"]           = "text",     -- default links to Structure -> would go yellow
  ["@variable.builtin"] = "builtin",  -- self / this
  ["@constant.builtin"] = "value",    -- nil / None / null are values
  ["@string.escape"]    = "builtin",
  ["@comment.error"]    = "error",
  ["@comment.warning"]  = "warn",
  ["@comment.note"]     = "info",

  -- groups.lua
  ["@variable"]           = "text",
  ["@markup.heading"]     = "Title",
  ["@diff.plus"]          = "Added",
  ["@diff.minus"]         = "Removed",
  ["@diff.delta"]         = "Changed",
  ["@lsp.mod.deprecated"] = "DiagnosticDeprecated",

  -- per-language special cases: just more rows
  ["rustSigil"] = "special", -- confirm the capture with :Inspect

  -- LSP semantic tokens: only ones that clobber treesitter
  ["@lsp.type.comment"] = "none",
}
