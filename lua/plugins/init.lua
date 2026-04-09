return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "echasnovski/mini.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("mini.align").setup()
      require("mini.comment").setup()
      require("mini.git").setup()
      require("mini.move").setup()
      require("mini.notify").setup()
      require("mini.pick").setup()
      require("mini.surround").setup()
      require("mini.indentscope").setup()
      require("mini.cursorword").setup()
      require("mini.icons").setup()
      vim.notify = require("mini.notify").make_notify()
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
    cmd = { "WhichPy" },
    ft = { "python" },
    opts = {},
  },
  {
    "posva/vim-vue",
    ft = "vue",
    opts = {},
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    config = function()
      require("rainbow-delimiters.setup").setup()
    end,
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    lazy = true,
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "typescriptreact", "javascriptreact" },
  },
  {
    "romus204/go-tagger.nvim",
    ft = { "go" },
    config = function()
      require("go-tagger").setup {
        skip_private = true, -- Skip unexported fields (starting with lowercase)
      }
    end,
  },
  {
    "Kurama622/style-transfer.nvim",
    event = "BufEnter",
    config = function()
      require("style_transfer").setup {}
    end,
  },
}
