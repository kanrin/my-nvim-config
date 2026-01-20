return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    version = "2.3.0", -- use 2.3.0 to ignore warn / but nvchad update lspconfig ill update lspconfig
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    lazy = true,
    cmd = { "Mason" },
    opts = {
      pkgs = {
        "pretty-php",
        "phpactor",
        "black",
        "clang-format",
        "css-lsp",
        "google-java-format",
        "html-lsp",
        "jdtls",
        "lua-language-server",
        "prettierd",
        "pyright",
        "stylua",
        "typescript-language-server",
        "vetur-vls",
        "xmlformatter",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
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
    -- optionally, override the default options:
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
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup()
    end,
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "typescriptreact", "javascriptreact" },
  },
  {
    "yetone/avante.nvim",
    -- ⚠️ 一定要加上这一行配置！！！！！
    build = vim.fn.has "win32" ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
    event = "VeryLazy",
    version = false,
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      provider = "gemini",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim", -- 用于文件选择器提供者 telescope
      "hrsh7th/nvim-cmp", -- avante 命令和提及的自动完成
      "ibhagwan/fzf-lua", -- 用于文件选择器提供者 fzf
      {
        -- 支持图像粘贴
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- 推荐设置
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- Windows 用户必需
            use_absolute_path = true,
          },
        },
      },
      {
        -- 如果您有 lazy=true，请确保正确设置
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
