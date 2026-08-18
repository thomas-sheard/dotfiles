local theme = require("core.theme.lualine")

require("lualine").setup({
    options = {
        theme = theme,
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
    },
})
