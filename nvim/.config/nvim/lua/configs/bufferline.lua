vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    mode = "buffers",
    themeable = true,
    separator_style = 'thin', -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
    offsets = {
      {
        filetype = "NvimTree",
        -- text = function()
        --   return vim.fn.getcwd()
        -- end,
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    }
  },
}
