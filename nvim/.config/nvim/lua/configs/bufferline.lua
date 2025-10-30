vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        mode = "buffers",
        separator_style = 'thin', -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
    }
}
