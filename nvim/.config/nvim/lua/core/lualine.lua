require("lualine").setup({
  options = {
    theme = system,
    icons_enabled = false,
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_b = {
      "branch",
      {
        "diff",
        diff_color = {
          added    = "Added",
          modified = "Changed",
          removed  = "Removed",
        },
      },
      "diagnostics",
    },
  },
})
