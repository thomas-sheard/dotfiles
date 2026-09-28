--local theme = require("core.theme.lualine")

require("lualine").setup({
    options = {
        theme = 'nord',
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
    },
})
