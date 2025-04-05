local M = {}

M.base_30 = {
  white = "#777c7a",
  darker_black = "#0b0b0b",
  black = "#0b0b0b", -- nvim bg
  black2 = "#0b0b0b",
  one_bg = "#121212",
  one_bg2 = "#151515",
  one_bg3 = "#181818",
  grey = "#1a1a1a",
  grey_fg = "#1d1d1d",
  grey_fg2 = "#202020",
  light_grey = "#242424",
  red = "#e05c78",
  baby_pink = "#e05c78",
  pink = "#b27cd9",
  line = "#101010", -- vertsplit, etc
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
  cyan = "#5cb8d4",
  statusline_bg = "#101010",
  lightbg = "#161616",
  lightbg2 = "#1a1a1a",
  pmenu_bg = "#7fc48f",
  folder_bg = "#6f99e8",
}

M.base_16 = {
  base00 = "#0b0b0b",
  base01 = "#101010",
  base02 = "#141414",
  base03 = "#181818",
  base04 = "#1e1e1e",
  base05 = "#d6d6d6",
  base06 = "#e0e0e0",
  base07 = "#ffffff",
  base08 = "#e05c78",
  base09 = "#e98b6b",
  base0A = "#e6d37a",
  base0B = "#7fc48f",
  base0C = "#79c2c0",
  base0D = "#6f99e8",
  base0E = "#b27cd9",
  base0F = "#a0a7a6",
}

M.type = "dark"

M = require("base46").override_theme(M, "everblush_softdark")

return M
