require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
  "gopls",
  "pyright",
  "ruff",
  "eslint",
  "ts_ls",
  "biome",
  "stylua",
}
vim.lsp.enable(servers)
-- vim.lsp.log.set_level(0)
-- read :h vim.lsp.config for changing options of lsp servers
