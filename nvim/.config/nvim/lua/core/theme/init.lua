local highlights = require("core.theme.highlights")
local treesitter = require("core.theme.treesitter")

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
end

return M
