local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    angular = { "prettier" },
    css = { "prettier" },
    flow = { "prettier" },
    graphql = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsx = { "prettier" },
    javascript = { "prettier" },
    less = { "prettier" },
    markdown = { "prettier" },
    scss = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
    yaml = { "prettier" },
    go = { "goimports" },
    python = { "autoflake", "autopep8" },
    java = { "google-java-format" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
