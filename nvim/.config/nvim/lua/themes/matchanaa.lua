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
  baby_pink = "#e67e80",
  pink = "#d699b6",
  line = "#22292b", -- for lines like vertsplit
  green = "#a7c080",
  vibrant_green = "#a7c080",
  nord_blue = "#96cdfb",
  blue = "#96cdfb",
  yellow = "#dbb37f",
  sun = "#dbb37f",
  purple = "#d699b6",
  dark_purple = "#d699b6",
  teal = "#7fbbb3",
  orange = "#dbb37f",
  cyan = "#7fbbb3",
  statusline_bg = "#181f22",
  lightbg = "#262d30",
  lightbg2 = "#1f2629",
  pmenu_bg = "#a7c080",
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
  base09 = "#dbb37f",
  base0A = "#dbb37f",
  base0B = "#a7c080",
  base0C = "#7fbbb3",
  base0D = "#96cdfb",
  base0E = "#d699b6",
  base0F = "#d3c6aa",
}


M.type = "dark"

M = require("base46").override_theme(M, "everblush")

return M
