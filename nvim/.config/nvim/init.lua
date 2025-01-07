vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
  { "nvchad/showkeys", cmd = "ShowkeysToggle", opts = { position = "bottom-right" } },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.opt.wrap = false
vim.opt.relativenumber = true

local nvimtree = require("nvim-tree")
local autocmd = vim.api.nvim_create_autocmd

-- Konfigurasi NvimTree
nvimtree.setup({
  actions = {
    open_file = {
      quit_on_open = true, -- Menutup NvimTree setelah membuka file
    },
  },
})

-- Autocmd untuk menutup NvimTree
autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "NvimTree" then
      vim.cmd "quit"
    end
  end,
})

-- Autocmd untuk menampilkan ShowkeysToggle
vim.cmd("ShowkeysToggle")

