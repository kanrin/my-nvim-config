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
  {
    "kkrampis/codex.nvim",
    lazy = true,
    cmd = { "Codex" },
    keys = {
      {
        "<leader>cc", -- Change this to your preferred keybinding
        function()
          require("codex").toggle()
        end,
        desc = "Toggle Codex popup or side-panel",
        mode = { "n", "t" },
      },
    },
    opts = {
      keymaps = {
        toggle = nil, -- Keybind to toggle Codex window (Disabled by default, watch out for conflicts)
        quit = "<C-q>", -- Keybind to close the Codex window (default: Ctrl + q)
      }, -- Disable internal default keymap (<leader>cc -> :CodexToggle)
      border = "rounded", -- Options: 'single', 'double', or 'rounded'
      width = 0.8, -- Width of the floating window (0.0 to 1.0)
      height = 0.8, -- Height of the floating window (0.0 to 1.0)
      model = nil, -- Optional: pass a string to use a specific model (e.g., 'o3-mini')
      autoinstall = true, -- Automatically install the Codex CLI if not found
      panel = false, -- Open Codex in a side-panel (vertical split) instead of floating window
      use_buffer = false, -- Capture Codex stdout into a normal buffer instead of a terminal buffer
    },
  },
}
