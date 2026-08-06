local rule = require('nvim-autopairs.rule')
local autopairs = require('nvim-autopairs')

autopairs.setup({
  event = "InsertEnter",
  config = true,
  check_ts = true,
  ignored_next_char = [=[[%w%%%'%[%"%.%`]]=],
  fast_wrap = {
    map = '<C-s>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = '$',
    before_key = 'h',
    after_key = 'l',
    cursor_pos_before = true,
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    manual_position = true,
    highlight = 'Search',
    highlight_grey='Comment'
  },
})

autopairs.add_rules({
  rule("$", "$", {"tex", "latex", "md", "markdown", "typ", "typst"})
  :with_move(function(opts)
         return opts.next_char == opts.char
      end),
  rule("`", "'", {"tex", "latex"}),

  rule("$ ", " $", {"typ", "typst"})
  :with_move(function(opts)
         return opts.next_char == opts.char
      end),

  rule("{", "}", {"md", "markdown"}),
  rule("(", ")", {"tex", "latex", "md", "markdown", "typ", "typst"}),
})

-- enables autopairs after a function completion

local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
