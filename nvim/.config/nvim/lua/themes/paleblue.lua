local M = {}

M.base_30 = {
  white = "#EBF4FA",
  darker_black = "#0A1A24",
  black = "#0A1A24", --  nvim bg
  black2 = "#0A1A24",
  one_bg = "#15374C",
  one_bg2 = "#0A1A24",
  one_bg3 = "#0A1A24",
  grey = "#15374C",
  grey_fg = "#15374C",
  grey_fg2 = "#15374C",
  light_grey = "#15374C",
  red = "#ABD1E8", -- statusline file, tree fg
  baby_pink = "#ABD1E8",
  pink = "#ABD1E8",
  line = "#15374C", -- for lines like vertsplit
  green = "#D3E7F3", -- lsp
  vibrant_green = "#3388BB",
  nord_blue = "#ABD1E8",
  blue = "#D3E7F3", -- vim mode, tree icon fg
  yellow = "#ABD1E8", -- statusline height, tree git new file
  sun = "#53A0D0",
  purple = "#7FB8DC",
  dark_purple = "#7FB8DC",
  teal = "#ABD1E8",
  orange = "#7FB8DC", -- statusline folder
  cyan = "#ABD1E8",
  statusline_bg = "#0A1A24",
  lightbg = "#0A1A24",
  pmenu_bg = "#3388BB",
  folder_bg = "#3388BB",
}

M.base_16 = {  
  base00 = "#0A1A24", -- Latar belakang utama (paling gelap)
  base01 = "#286B94", -- Latar belakang sekunder
  base02 = "#3388BB", -- Teks utama
  base03 = "#53A0D0", -- Komentar
  base04 = "#7FB8DC", -- Teks sekunder
  base05 = "#ABD1E8", -- Teks normal
  base06 = "#D3E7F3", -- Teks penting
  base07 = "#EBF4FA", -- Teks sangat penting (paling terang)
  base08 = "#3388BB", -- Tag (warna utama)
  base09 = "#53A0D0", -- Highlight tambahan
  base0A = "#ABD1E8", -- String
  base0B = "#ABD1E8", -- String (bisa sama dengan base0A)
  base0C = "#7FB8DC", -- Elemen khusus
  base0D = "#53A0D0", -- Bracket
  base0E = "#286B94", -- Keyword
  base0F = "#1F5170", -- Elemen lainnya (opsional)
}



M.type = "dark"

M.polish_hl = {
  ["@tag"] = { fg = M.base_30.orange },
  ["@tag.delimiter"] = { fg = M.base_30.green },
}

M = require("base46").override_theme(M, "everforest")

return M
