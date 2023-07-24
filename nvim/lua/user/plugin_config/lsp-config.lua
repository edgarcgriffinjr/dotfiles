require("mason-lspconfig").setup {
  ensure_installed = {'tsserver', 'html', 'lua_ls', 'jdtls', 'pyright', 'cssls', 'lemminx'}
}
require('barbecue').setup()

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local navic = require('nvim-navic')
local servers = {'tsserver', 'html', 'lua_ls', 'jdtls', 'pyright', 'cssls', 'lemminx'}
local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

for _, lsp in ipairs(servers) do
lspconfig[lsp].setup{
  capabilites = capabilities,
  on_attach = on_attach
  }
end


