--[[

broadly for highlighting i want to maintain:

blue: things that do things; functions, methods, macros
purple: language structure, flow control
orange: concrete values
green: strings/text
magenta: types / semantic declarations / special language constructs
cyan: subtle visual distinction where needed (operators), rare contextual/builtin things
yellow: things you should pay attention to (rust sigils, warnings)
red: errors

cleared: variables, names, punctuation. things that are operated on by everything else!

--]]

-- general group
local highlights = require("core.theme.highlights")
local treesitter = require("core.theme.treesitter")
--local lualine = require("core.theme.lualine")

-- languages
local typst = require("core.theme.typst")
local rust = require("core.theme.rust")

-- other
local mason = require("core.theme.mason")

local M = {}

function M.setup()
    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "system"

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    for group, opts in pairs(treesitter) do
        vim.api.nvim_set_hl(0, group, opts)
    end

 --   for group, opts in pairs(lualine) do
 --       vim.api.nvim_set_hl(0, group, opts)
 --   end

    for group, opts in pairs(typst) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    for group, opts in pairs(rust) do
        vim.api.nvim_set_hl(0, group, opts)
    end


    for group, opts in pairs(mason) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
