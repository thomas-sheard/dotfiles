local ls = require('luasnip')

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local sn = ls.snippet_node
--local isn = ls.indent_snippet_node
local f = ls.function_node
--local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
--local ms = ls.multi_snippet

--local events = require("luasnip.util.events")
--local ai = require("luasnip.nodes.absolute_indexer")

--local extras = require("luasnip.extras")
--local l = extras.lambda
--local rep = extras.rep
--local p = extras.partial
--local m = extras.match
--local n = extras.nonempty
--local dl = extras.dynamic_lambda

local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

--local conds = require("luasnip.extras.expand_conditions")
--local postfix = require("luasnip.extras.postfix").postfix
--local types = require("luasnip.util.types")
--local parse = require("luasnip.util.parser").parse_snippet

local as = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })

--local in_math = function()
--  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
--end

--local tex = require("utils.conditions")
--
--local generate_matrix = function(args, snip)
--	local rows = tonumber(snip.captures[2])
--	local cols = tonumber(snip.captures[3])
--	local nodes = {}
--	local ins_indx = 1
--	for j = 1, rows do
--		table.insert(nodes, r(ins_indx, tostring(j) .. "x1", i(1)))
--		ins_indx = ins_indx + 1
--		for k = 2, cols do
--			table.insert(nodes, t(" & "))
--			table.insert(nodes, r(ins_indx, tostring(j) .. "x" .. tostring(k), i(1)))
--			ins_indx = ins_indx + 1
--		end
--		table.insert(nodes, t({ "\\\\", "" }))
--	end
--	-- fix last node.
--	nodes[#nodes] = t("\\\\")
--	return sn(nil, nodes)
--end

return {

as("sqrt", fmta(
  [[
  sqrt(<>)
  ]],
  {
    i(0)
  }
)),

s("ff", fmta(
  [[
  (<>)/(<>)
  ]],
  {
    i(1, "num"), i(0, "den")
  }
)),

s("integral", fmta(
  [[
  integral_(<>)^(<>)
  ]],
  {
    i(1), i(0)
  }
)),

s("rl", fmta(
  [[
  ^(<>)_(<>)
  ]],
  {
    i(1), i(0)
  }
)),

s("nq", fmta(
  [[
  #newquestion[<>]
  ]],
  {
    i(0)
  }
)),

s("nsq", fmta(
  [[
  #newsubquestion[<>]
  ]],
  {
    i(0)
  }
)),

s("nssq", fmta(
  [[
  #newsubsubquestion[<>]
  ]],
  {
    i(0)
  }
)),

s("ali", fmt(
  [[
  #align({})[
    {}
  ]
  ]],
  {
    i(1, 'center'), i(0)
  }
)),

s("img", fmta(
  [[
  image("<>", width: <>),
  ]],
  {
    i(1, 'path'), i(0, '80%')
  }
)),

s("fig", fmt(
    [[
#figure(
  {}
  caption: [{}],
) <fig:{}>
    ]],
    {
      i(0), i(1, 'Caption'), i(2, 'label')
    }
  )),

s("tab", fmta(
    [[
    \begin{table}[<>]
      \caption{<>}
      \label{tab:<>}
      \centering
      \begin{<a>}{<>}
        <>
      \end{<a>}
    \end{table}
    ]],
    {
      i(1, 'htbp'), i(2, 'Caption'), i(3, 'label'), a = i(4, 'tabular'), i(5, 'c|c'), i(0)
    }
  )),

  as({ trig = "arr(%d)(%d)", regTrig = true, name = "array" }, {
    d(1, function(_, snip)
      local rows = tonumber(snip.captures[1]) 
      local cols = tonumber(snip.captures[2])
      local nodes = {}
      local ins_indx = 1
      local format_str = ""

      for r = 1, rows do
        local row = {}
        for c = 1, cols do
          table.insert(row, " {} ")
          table.insert(nodes, i(ins_indx))
          ins_indx = ins_indx + 1
        end

        format_str = format_str .. table.concat(row, "&")

        if r < rows then
          format_str = format_str .. " \\\\\n"
        end
      end

      return sn(nil, fmt(format_str, nodes))
    end),
  }),

}

