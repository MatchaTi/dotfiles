local support_ft = {
  "*.js",
  "*.ts",
  "*.jsx",
  "*.tsx",
  "*.html",
  "*.css",
  "*.vue",
  "*.svelte",
  "*.json",
  "*.yaml",
  "*.yml",
  "*.md",
  "*.py",
  "*.lua",
  "*.go",
  "*.java",
  "*.rs",
  "*.c",
  "*.cpp",
  "*.php",
  "*.blade.php"
}

-- matchanaa colors
local matchanaaChunk = "#d3c6aa"
local matchanaaIndent = "#2c2c2c"

-- matchati colors
local matchatiChunk = "#b3b9b8"
local matchatiIndent = "#232a2d"

-- paleblue colors
local paleblueChunk = "#"
local paleblueIndent = "#"

require("hlchunk").setup {
  chunk = {
    enable = true,
    support_filetypes = support_ft,
    style = matchatiChunk,
    -- ...
  },
  indent = {
    enable = true,
    support_filetypes = support_ft,
    style = {
      { fg = matchatiIndent },
    },
    -- ...
  },
}
