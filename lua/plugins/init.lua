return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      pkgs = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
        "pyright",
        "vue-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "python",
        "java",
        "vue",
        "awk",
        "rust",
        "yaml",
        "json",
        "xml",
        "css",
        "cpp",
        "c",
        "c_sharp",
        "gomod",
        "gosum",
        "gowork",
        "gotmpl",
        "groovy",
        "java",
        "kotlin",
      },
    },
  },
  {
    "echasnovski/mini.comment",
    version = "*",
    lazy = false,
    config = function()
      require("mini.comment").setup()
    end,
  },
  {
    "echasnovski/mini.surround",
    version = "*",
    lazy = false,
    config = function()
      require("mini.surround").setup()
    end,
  },
  {
    "echasnovski/mini-git",
    lazy = false,
    version = false,
    main = "mini.git",
    config = function()
      require("mini.git").setup()
    end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("lsp_lines").setup()
    end,
  },
  {
    "vidocqh/data-viewer.nvim",
    opts = {},
    ft = { "csv", "tsv", "sqlite" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "kkharji/sqlite.lua", -- Optional, sqlite support
    },
  },
  {
    "neolooong/whichpy.nvim",
    ft = { "py", "pyc", "pyd", "pyi" },
    opts = {},
  },
  {
    "posva/vim-vue",
    ft = "vue",
    opts = {},
  },
}
