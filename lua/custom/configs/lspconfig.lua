local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  filetypes = {"c", "cpp", "h"},
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
