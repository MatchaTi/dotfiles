-- Credits to original https://github.com/sainnhe/everforest
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#D3C6AA",
  darker_black = "#191919",
  black = "#191919", --  nvim bg
  black2 = "#191919",
  one_bg = "#383838",
  one_bg2 = "#383838",
  one_bg3 = "#383838",
  grey = "#383838",
  grey_fg = "#383838",
  grey_fg2 = "#383838",
  light_grey = "#383838",
  red = "#e67e80",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#383838", -- for lines like vertsplit
  green = "#83c092",
  vibrant_green = "#a7c080",
  nord_blue = "#78b4ac",
  blue = "#7393b3",
  yellow = "#dbbc7f",
  sun = "#d1b171",
  purple = "#ecafcc",
  dark_purple = "#d699b6",
  teal = "#69a59d",
  orange = "#e69875",
  cyan = "#95d1c9",
  statusline_bg = "#191919",
  lightbg = "#191919",
  pmenu_bg = "#83c092",
  folder_bg = "#96cdfb",
}

M.base_16 = {
  base00 = "#191919",
  base01 = "#323c41",
  base02 = "#3a4248",
  base03 = "#424a50",
  base04 = "#4a5258",
  base05 = "#d3c6aa",
  base06 = "#ddd0b4",
  base07 = "#e7dabe",
  base08 = "#e67e80",
  base09 = "#d699b6",
  base0A = "#a7c080",
  base0B = "#dbbc7f",
  base0C = "#e69875",
  base0D = "#a7c080",
  base0E = "#7fbbb3",
  base0F = "#d699b6",
}


M.type = "dark"

M.polish_hl = {
  ["@tag"] = { fg = M.base_30.orange },
  ["@tag.delimiter"] = { fg = M.base_30.green },
}

M = require("base46").override_theme(M, "everforest")

return M
