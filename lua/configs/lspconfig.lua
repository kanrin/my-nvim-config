-- EXAMPLE
-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
-- local capabilities = require("nvchad.configs.lspconfig").capabilities

-- local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "gopls", "pyright", "lua_ls", "ts_ls", "vuels", "jdtls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.enable(lsp, true)
  -- lspconfig[lsp].setup {
  --   on_attach = on_attach,
  --   on_init = on_init,
  --   capabilities = capabilities,
  -- }
end


-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config { virtual_text = false }
