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
  "wc_language_server",
  "buf_ls",
}
vim.lsp.enable(servers)
-- vim.lsp.log.set_level(0)
-- read :h vim.lsp.config for changing options of lsp servers
