-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "matcha",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  nvdash = {
    load_on_startup = true,
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round"
  },
  cmp = {
    format_colors = {
      tailwind = true,
    }
  },
}


return M
