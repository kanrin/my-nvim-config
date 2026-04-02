local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports" },
    python = { "black", "ruff" },
    java = { "google-java-format" },
    ["c"] = { "clang-format" },
    ["c++"] = { "clang-format" },
    ["c#"] = { "clang-format" },
    svg = { "xmlformatter" },
    xml = { "xmlformatter" },
    php = { "pretty-php" },
    groovy = { "npm-groovy-lint", timeout_ms = 15000 },
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
