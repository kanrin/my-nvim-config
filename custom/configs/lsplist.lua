-- local servers = {
--   "html",
--   "cssls",
--   "tsserver",
--   "clangd",
--   "pyright",
--   "gopls",
-- }

local servers = {
  ["lua-language-server"] = "lua_ls",
  ["css-lsp"] = "cssls",
  ["tailwindcss-language-server"] = "tailwindcss",
  ["html-lsp"] = "html",
  ["typescript-language-server"] = "tsserver",
  -- ["prettier"] = "prettier",
  ["clangd"] = "clangd",
  -- ["clang-format"] = "clang-format",
  ["gopls"] = "gopls",
  ["pyright"] = "pyright",
  ["erlang-ls"] = "erlangls",
  ["ruby-lsp"] = "ruby_ls",
  ["perlnavigator"] = "perlls",
  ["julia-lsp"] = "julials",
  ["csharp-language-server"] = "csharp_ls",
}

return servers
