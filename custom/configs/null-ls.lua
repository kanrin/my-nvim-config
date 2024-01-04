local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "json", "jsonc", "yaml", "scss", "less" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  b.formatting.autopep8,

  -- shell
  b.formatting.beautysh,

  -- protobuf
  b.formatting.buf,

  -- csharp
  b.formatting.csharpier,
  -- erlang
  b.formatting.erlfmt,
  -- go
  b.formatting.goimports,

}

null_ls.setup {
  debug = true,
  sources = sources,
}
