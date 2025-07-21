vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

require "configs.lazy"
require "configs.editor"
require "mappings"

-- colorscheme
vim.opt.termguicolors = true
vim.cmd("colorscheme raana")
