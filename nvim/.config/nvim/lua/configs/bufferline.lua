vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    mode = "buffers",
    themeable = true,
    separator_style = 'thin', -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
  },
  offsets = {
    {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      separator = true -- use a "true" to enable the default, or set your own character
    }
  }
}
