local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    python = { "black" },
    java = { "google-java-format" },
    ["c"] = { "clang-format" },
    ["c++"] = { "clang-format" },
    ["c#"] = { "clang-format" },
    ["_"] = { "prettierd" },
    ["svg"] = { "xmlformatter" },
    ["xml"] = { "xmlformatter" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 4000,
    lsp_format = "fallback",
  },
}

require("conform").setup(options)
