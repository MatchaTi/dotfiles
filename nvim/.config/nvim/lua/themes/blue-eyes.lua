local M = {}

M.base_30 = {
  white = "#e0e0e0",
  darker_black = "#10151a",
  black = "#10151a", --  nvim bg
  black2 = "#10151a",
  one_bg = "#22303a",
  one_bg2 = "#2b3b52",
  one_bg3 = "#10151a",
  grey = "#2b3b52",
  grey_fg = "#34495e",
  grey_fg2 = "#34495e",
  light_grey = "#34495e",
  red = "#e05c78",
  baby_pink = "#e05c78",
  pink = "#b27cd9",
  line = "#182028", -- for lines like vertsplit
  green = "#7fc48f",
  vibrant_green = "#7fc48f",
  nord_blue = "#6f99e8",
  blue = "#6f99e8",
  yellow = "#e6d37a",
  sun = "#e6d37a",
  purple = "#b27cd9",
  dark_purple = "#b27cd9",
  teal = "#79c2c0",
  orange = "#e98b6b",
  cyan = "#79c2c0",
  statusline_bg = "#10151a",
  lightbg = "#1c2328",
  lightbg2 = "#1f2629",
  pmenu_bg = "#7fc48f",
  folder_bg = "#6f99e8",
}

M.base_16 = {
  base00 = "#10151a",
  base01 = "#182028",
  base02 = "#22303a",
  base03 = "#2b3b52",
  base04 = "#34495e",
  base05 = "#e0e0e0",
  base06 = "#d6d6d6",
  base07 = "#ffffff",
  base08 = "#e05c78",
  base09 = "#e98b6b",
  base0A = "#e6d37a",
  base0B = "#7fc48f",
  base0C = "#79c2c0",
  base0D = "#6f99e8",
  base0E = "#b27cd9",
  base0F = "#d6d6d6",
}

M.type = "dark"

M = require("base46").override_theme(M, "everblush")

return M
