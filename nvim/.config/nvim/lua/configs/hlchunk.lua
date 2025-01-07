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
}

require("hlchunk").setup {
  chunk = {
    enable = true,
    support_filetypes = support_ft,
    style = "#3388BB",
    -- ...
  },
  indent = {
    enable = true,
    support_filetypes = support_ft,
    style = {
      { fg = "#15374C" },
    },
    -- ...
  },
}
