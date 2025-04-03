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
    event = "VeryLazy",
    version = false, -- 永远不要将此值设置为 "*"！永远不要！
    opts = {
      -- 在此处添加任何选项
      -- 例如
      provider = "openai",
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o", -- 您想要的模型（或使用 gpt-4o 等）
        timeout = 30000, -- 超时时间（毫秒），增加此值以适应推理模型
        temperature = 0,
        max_tokens = 8192, -- 增加此值以包括推理模型的推理令牌
        --reasoning_effort = "medium", -- low|medium|high，仅用于推理模型
      },
    },
    -- 如果您想从源代码构建，请执行 `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- 对于 Windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
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
