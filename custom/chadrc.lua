---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "onenord", "onedark" },
  theme = "onenord", -- default theme

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,

    header = {
      [[  ____         __      _______ __  __ ]],
      [[ / __ \        \ \    / /_   _|  \/  |]],
      [[| |  | |_ __ ___\ \  / /  | | | \  / |]],
      [[| |  | | '__|_  /\ \/ /   | | | |\/| |]],
      [[| |__| | |   / /  \  /   _| |_| |  | |]],
      [[ \____/|_|  /___|  \/   |_____|_|  |_|]],
    },

    buttons = {
      { "  查找文件", "SPACE f f", "Telescope find_files" },
      { "󰈚  最近文件", "SPACE f o", "Telescope oldfiles" },
      { "󰈭  查找文本", "SPACE f w", "Telescope live_grep" },
      { "  查找标签", "SPACE m a", "Telescope marks" },
      { "  切换主题", "SPACE t h", "Telescope themes" },
      { "  操作指南", "SPACE c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
