require('mason').setup()
require('mason-lspconfig').setup()

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = true, 
        },
      },
    },
  },
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } }
    }
  }
})

vim.lsp.config('r_language_server', {
  settings = {
    r = {
      lsp = {
        rich_editing = true,
        diagnostics = false,
      },
    },
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "typst",
  callback = function()
    vim.treesitter.start()
  end,
})

vim.lsp.config("tinymist", {
  settings = {
    --semanticTokens = "disable",
  },
})
vim.lsp.enable("tinymist")

--vim.lsp.enable('basedpyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('texlab')
vim.lsp.enable('html')
vim.lsp.enable('r_language_server')
