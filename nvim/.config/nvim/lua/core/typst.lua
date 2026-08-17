-- :filter /^typst/ highlight

-- typstMarkupHeading 
-- typstCommentBlock 
-- typstCommentLine 
-- typstCommentTodo 
-- typstCodeConditional 
-- typstCodeRepeat 
-- typstCodeKeyword 
-- typstCodeStatement 
-- typstCodeStatementWord 
-- typstCodeShowRocket 
-- typstCodeIdentifier 
-- typstCodeFieldAccess 
-- typstCodeFunction 
-- typstCodeFunctionArgument 
-- typstCodeConstant 
-- typstCodeNumberInteger 
-- typstCodeNumberFloat 
-- typstCodeNumberLength 
-- typstCodeNumberAngle 
-- typstCodeNumberRatio 
-- typstCodeNumberFraction 
-- typstCodeString 
-- typstCodeLabel 
-- typstCodeParen 
-- typstCodeBrace 
-- typstCodeBracket 
-- typstCodeDollar 
-- typstMarkupRawInline 
-- typstMarkupRawBlock 
-- typstHashtagConditional 
-- typstHashtagRepeat 
-- typstHashtagKeywords 
-- typstHashtagStatement 
-- typstHashtagControlFlow 
-- typstHashtagKeyword 
-- typstMarkupLabel 
-- typstHashtagStatementWord 
-- typstHashtagConstant 
-- typstHashtagIdentifier 
-- typstHashtagFieldAccess 
-- typstHashtagFunction 
-- typstHashtagParen 
-- typstHashtagBrace 
-- typstHashtagBracket 
-- typstHashtagDollar 
-- typstMarkupUrl 
-- typstMarkupBulletList 
-- typstMarkupEnumList 
-- typstMarkupTermList 
-- typstMarkupBold 
-- typstMarkupItalic 
-- typstMarkupLinebreak 
-- typstMarkupNonbreakingSpace 
-- typstMarkupShy 
-- typstMarkupDash 
-- typstMarkupEllipsis 
-- typstMarkupCodeBlockTypst 
-- typstMarkupBoldRegion 
-- typstMarkupItalicRegion 
-- typstMarkupBoldItalic 
-- typstMarkupBracket 
-- typstMarkupDollar 
-- typstMathIdentifier 
-- typstMathFunction 
-- typstMathNumber 
-- typstMathSymbol 
-- typstMathBold 
-- typstMathScripts 
-- typstMathQuote 

local colors = {
  blue       = "#92bee8",
  dark_blue  = "#647fc9",
  cyan       = "#64afad",
  purple     = "#9b88cc",
  green      = "#89af89",
  dark_green = "#53846b",
  yellow     = "#d8c58a",
  orange     = "#cea279",
  red        = "#e06c75",
  magenta    = "#d6a7d5",
  burgundy   = "#aa68a6",
  grey       = "#abb2bf",
  grey_dark  = "#282c34",
}

-- WIP

local highlights = {
  -- main headings
  typstMarkupHeading = {
    fg = colors.blue,
    bold = true,
  },

  -- todo comments
  typstCommentTodo = {
    fg = colors.red,
    italic = true,
  },

  -- markup
  typstMarkupBold = {
    fg = colors.purple,
    bold = true,
  },

  typstMarkupItalic = {
    fg = colors.purple,
    italic = true,
  },

  typstMarkupBoldItalic = {
    fg = colors.purple,
    bold = true,
    italic = true,
  },

  -- code
  typstMarkupRawInline = {
    fg = colors.green,
  },

  typstMarkupRawBlock = {
    fg = colors.green,
  },

  -- url
  typstMarkupUrl = {
    fg = colors.cyan,
  },

  -- maths

-- typstMarkupDollar
-- typstMathIdentifier
-- typstMathFunction
-- typstMathNumber
-- typstMathSymbol
-- typstMathBoldxxx
-- typstMathScripts
-- typstMathQuote

  typstMarkupDollar = {
    fg = colors.dark_blue,
  },

  typstMathIdentifier = {
    fg = colors.orange,
  },

  typstMathFunction = {
    fg = colors.purple,
  },

  typstMathNumber = {
    fg = colors.orange,
  },

  typstMathSymbol = {
    fg = colors.blue,
  },

  typstMathBoldxx = {
    fg = colors.orange,
  },

  typstMathScripts = {
    fg = colors.orange,
  },

  typstMathQuote = {
    fg = colors.green,
  },

  -- typst code

--	typstHashtagConditional  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagRepeat  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagKeywords  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagStatement  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagControlFlow  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagKeyword  = {
--		fg = colors.yellow,
--	},
--
--	typstMarkupLabel  = {
--		fg = colors.yellow,
--	},
--
--	typstHashtagStatementWord  = {
--		fg = colors.red,
--	},
--
--	typstHashtagConstant  = {
--		fg = colors.red,
--	},
--
--	typstHashtagIdentifier  = {
--		fg = colors.orange,
--	},
--
--    -- #sym
--	typstHashtagFieldAccess  = {
--		fg = colors.purple,
--	},
--
--    -- eg text(), box(), v()
--	typstHashtagFunction  = {
--		fg = colors.purple,
--	},
--
--	typstHashtagParen  = {
--		fg = colors.red,
--	},
--
--	typstHashtagBrace  = {
--		fg = colors.red,
--	},
--
--	typstHashtagBracket  = {
--		fg = colors.red,
--	},
--
--	typstHashtagDollar  = {
--		fg = colors.red,
--	},
--
--    -- other code
--
--	typstCodeConditional  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeRepeat  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeKeyword  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeStatement  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeStatementWord  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeShowRocket  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeIdentifier  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeFieldAccess  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeFunction  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeFunctionArgument  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeConstant  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberInteger  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberFloat  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberLength  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberAngle  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberRatio  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeNumberFraction  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeString  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeLabel  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeParen  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeBrace  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeBracket  = {
--		fg = colors.burgundy,
--	},
--
--	typstCodeDollar  = {
--		fg = colors.burgundy,
--	},

}

--vim.api.nvim_set_hl(0, "typstMarkupHeading", {
--  fg = colors.blue,
--  bold = true,
--})

-- loop and apply
for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
