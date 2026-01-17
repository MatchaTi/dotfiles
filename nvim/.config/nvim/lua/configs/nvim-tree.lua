-- Membuat garis pembatas antar window tidak terlihat
-- Grup untuk menampung autocommand kustom
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#0d1117' })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[highlight NvimTreeClosedFolderIcon guifg=#FDCE4C]])
vim.cmd([[highlight NvimTreeOpenedFolderIcon guifg=#FDCE4C]])
vim.opt.fillchars = vim.opt.fillchars + { vert = ' ' }

vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 24,
    side = "left"
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
