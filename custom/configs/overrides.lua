local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "go",
    "erlang",
    "gitignore",
    "gitcommit",
    "c_sharp",
    "csv",
    "git_config",
    "git_rebase",
    "gitattributes",
    "java",
    "make",
    "php",
    "proto",
    "python",
    "sql",
    "tsx",
    "julia",
    "vue",
    "yaml",
    "toml",
    "xml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    "lua-language-server",
    "gopls",
    "pyright",
    "erlang_ls",
    "ruby_ls",
    "perlls",
    "julials",
    "csharp_ls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.mini_move = {
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
    left = "<M-h>",
    right = "<M-l>",
    down = "<M-j>",
    up = "<M-k>",

    -- Move current line in Normal mode
    line_left = "<M-h>",
    line_right = "<M-l>",
    line_down = "<M-j>",
    line_up = "<M-k>",
  },

  options = {
    -- Automatically reindent selection during linewise vertical move
    reindent_linewise = true,
  },
}

M.rainbow_delimiters = {
  query = {
    [""] = "rainbow-delimiters",
    lua = "rainbow-blocks",
  },
  priority = {
    [""] = 110,
    lua = 210,
  },
  highlight = {
    "RainbowDelimiterRed",
    "RainbowDelimiterYellow",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterCyan",
  },
}

return M
