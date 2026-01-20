local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports" },
    python = { "black" },
    java = { "google-java-format" },
    ["c"] = { "clang-format" },
    ["c++"] = { "clang-format" },
    ["c#"] = { "clang-format" },
    svg = { "xmlformatter" },
    xml = { "xmlformatter" },
    php = { "pretty-php" },
    ["_"] = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 4000,
    lsp_format = "fallback",
  },
}

require("conform").setup(options)
