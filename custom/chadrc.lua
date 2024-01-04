---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "onedark", "one_light", "onenord", "nord" },
  theme = "onenord", -- default theme

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
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
      { "  Find File", "SPACE f f", "Telescope find_files" },
      { "󰈚  Recent Files", "SPACE f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "SPACE f w", "Telescope live_grep" },
      { "  Bookmarks", "SPACE m a", "Telescope marks" },
      { "  Themes", "SPACE t h", "Telescope themes" },
      { "  Mappings", "SPACE c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
