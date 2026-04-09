local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports" },
    python = {
      "ruff_fix",
      "ruff_format",
      "ruff_organize_imports",
    },
    java = { "google-java-format" },
    ["c"] = { "clang-format" },
    ["c++"] = { "clang-format" },
    ["c#"] = { "clang-format" },
    svg = { "xmlformatter" },
    xml = { "xmlformatter" },
    php = { "pretty-php" },
    groovy = { "npm-groovy-lint", timeout_ms = 15000 },
    typescript = { "biome" },
    javascript = { "biome" },
    json = { "biome" },
    ["_"] = { "prettierd" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options
