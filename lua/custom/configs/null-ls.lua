local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics


local opts = {
  sources = {
    -- C/C++
    formatting.clang_format,

    -- Python
    formatting.black,
    lint.mypy,
    lint.ruff,
  },
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
    end
  end,
}
return opts
