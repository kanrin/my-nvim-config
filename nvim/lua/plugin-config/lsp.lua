-- Setup language servers.
local lspconfig = require('lspconfig')
local languages = {"pyright", "clangd", "eslint", "gopls", "zk", "tsserver", "lua_ls"}

for i=1, #languages do
 lspconfig[languages[i]].setup{
    autostart = false,
 }
end

require("nvim-lsp-installer").setup{
    automatic_installaton = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
}
