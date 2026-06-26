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

local in_math = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

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

  s("begin", fmta(
  [[
  \begin{<a>}
    <>
  \end{<a>}
  ]], {
    a = i(1, "env"), i(0)
  }, {
    repeat_duplicates = true
  })),

  s("usepackage", fmta(
  [[
  \usepackage{<>}
  ]],
  {
    i(0, "pkg")
  })),

  s("ausepackage", fmta(
  [[
  \usepackage<>{<>}
  ]],
  {
    i(1), i(0, "pkg")
  })),

  s("iverb", fmta(
  [[
  \verb|<>|
  ]],
  {
    i(0)
  }
)),

s("dverb", fmta(
  [[
  \begin{Verbatim}[frame=single, baselinestretch=1, breaklines=true]
  <>
  \end{Verbatim}
  ]],
  {i(0)}
)),

as("eqn", fmta(
  [[
  \begin{equation*}
    <>
  \end{equation*}
  ]],
  {
    i(0)
  }
)),

s("ali", fmta(
  [[
  \begin{align*}
    <>
  \end{align*}
  ]],
  {
    i(0)
  }
)),

as("mbb", fmta(
  [[
  \mathbb{<>}
  ]],
  {
    i(0)
  }
)),

as("mbf", fmta(
  [[
  \mathbf{<>}
  ]],
  {
    i(0)
  }
)),

s("tbf", fmta(
  [[
  \textbf{<>}
  ]],
  {
    i(0)
  }
)),

s("tit", fmta(
  [[
  \textit{<>}
  ]],
  {
    i(0)
  }
)),

s("ttt", fmta(
  [[
  \texttt{<>}
  ]],
  {
    i(0)
  }
)),

s("tsc", fmta(
  [[
  \textsc{<>}
  ]],
  {
      i(0)
  }
)),

as("sqrt", fmta(
  [[
  \sqrt{<>}
  ]],
  {
    i(0)
  }
)),

s("ff", fmta(
  [[
  \frac{<>}{<>}
  ]],
  {
    i(1, "num"), i(0, "den")
  }
)),

as({trig="_", wordTrig=false}, fmta(
  [[
  _{<>}
  ]],
  {
    i(0)
  }
), { condition = in_math, wordTrig = false }),

as({trig="^", wordTrig = false} , fmta(
  [[
  ^{<>}
  ]],
  {
    i(0)
  }
), { condition = in_math}),

s("dot", t("\\cdot")),

as("mff", fmta(
  [[
  \frac{<>}{<>}<>
  ]],
  {
    i(1, "n"), i(2, "d"), i(0)
  }
)),

s("d", fmta(
  [[
  \d{<>}
  ]],
  {
    i(0)
  }
)),

s("int", fmta(
  [[
  \int_{<>}^{<>}
  ]],
  {
    i(1), i(0)
  }
)),

s("ud", fmta(
  [[
  ^{<>}_{<>}
  ]],
  {
    i(1), i(0)
  }
)),

s("eval", fmta(
  [[
  \left[ <> \right]_{<>}^{<>}
  ]],
  {
    i(0), i(1), i(2)
  }
)),

s("sec", fmta(
  [[
  \section{<>}
  \label{sec:<>}
  ]],
  {
    i(1), i(0)
  }
)),

s("ssec", fmta(
  [[
  \subsection{<>}
  \label{sec:<>}
  ]],
  {
    i(1), i(0)
  }
)),

s("sssec", fmta(
  [[
  \subsubsection{<>}
  \label{sec:<>}
  ]],
  {
    i(1), i(0)
  }
)),

s("nq", fmta(
  [[
  \newquestion{<>}
  ]],
  {
    i(0)
  }
)),

s("nsq", fmta(
  [[
  \newsubquestion{<>}
  ]],
  {
    i(0)
  }
)),

s("nssq", fmta(
  [[
  \newsubsubquestion{<>}
  ]],
  {
    i(0)
  }
)),

s("img", fmta(
  [[
  \includegraphics[width=<>\linewidth]{<>}
  ]],
  {
    i(1, '\\scalefactor'), i(0, 'path')
  }
)),

s("fig", fmta(
    [[
    \begin{figure}[<>]
      \centering
      <>
      \caption{<>}
      \label{fig:<>}
    \end{figure}
    ]],
    {
      i(1, 'htbp'), i(0), i(2, 'Caption'), i(3, 'label')
    }
  )),

s("subfig", fmta(
    [[
    \begin{subfigure}{<>\textwidth}
      \centering
      <>
      \subcaption{<>}
      \label{subfig:<>}
    \end{subfigure}
    ]],
    {
      i(1, '0.2'), i(0), i(2, 'Subcaption'), i(3, 'label')
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

--  as("$", fmta(
  --  [[
  --  $<>$<>
  --  ]], {
    --    i(1), i(0)
    --  })),

    --    s({trig = "([bBpvV])mat(%d+)x(%d+)([ar])", name = "[bBpvV]matrix", dscr = "matrices", regTrig = true, hidden = true},
    --    fmta([[
    --    \begin{<>}<>
    --    <>
    --    \end{<>}]],
    --    {f(function(_, snip)
      --      return snip.captures[1] .. "matrix"
      --    end),
      --    f(function(_, snip)
        --      if snip.captures[4] == "a" then
        --        out = string.rep("c", tonumber(snip.captures[3]) - 1)
        --        return "[" .. out .. "|c]"
        --      end
        --      return ""
        --    end),
        --    d(1, generate_matrix),
        --    f(function(_, snip)
          --      return snip.captures[1] .. "matrix"
          --    end)
          --  }),
          --  { condition = tex.in_math, show_condition = tex.in_math }),

        }

