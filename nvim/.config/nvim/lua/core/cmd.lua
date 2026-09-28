vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*:[vV\x16]*",
  callback = function()
    vim.cmd("nohlsearch")
  end,
})

vim.api.nvim_create_user_command("ThemeAudit", require("core.theme.audit").run, {})
