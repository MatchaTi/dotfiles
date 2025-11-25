-- Membuat garis pembatas antar window tidak terlihat
-- Grup untuk menampung autocommand kustom
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#0d1117' })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 25,
    },
    renderer = {
        indent_markers = {
            enable = true
        },
        group_empty = true,
        root_folder_label = false,
    },
    filters = {
        dotfiles = true,
    },
})
