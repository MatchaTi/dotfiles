vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/hrsh7th/cmp-cmdline" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/github/copilot.vim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/yioneko/nvim-vtsls" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/projekt0n/github-nvim-theme" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
})

require("plugins.telescope")
require("plugins.conform")
require("plugins.gitsigns")
require("plugins.nvim-tree")
require("plugins.tiny-inline-diagnostic")
require("plugins.cmp")
require("plugins.copilot")
require("plugins.vtsls")
require("plugins.lualine")
require("plugins.github-theme")
