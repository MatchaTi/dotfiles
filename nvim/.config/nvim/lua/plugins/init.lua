return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save opts = require "configs.conform",
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
        },
      },
    },
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  { "nvzone/volt", lazy = true },
  { "nvzone/menu", lazy = true },
  {
    "nvchad/minty",
    lazy = true,
  },

  { "nvchad/showkeys", cmd = "ShowkeysToggle", opts = { position = "bottom-right" } },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- require("hlchunk").setup {}
      require "configs.hlchunk"
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000,    -- needs to be loaded in first
    config = function()
      -- require('tiny-inline-diagnostic').setup()
      require "configs.tiny-inline-diagnostic"
    end,
  },

  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*", -- Use the latest tagged version
    opts = {},     -- This causes the plugin setup function to be called
    keys = {
      { "<C-j>",         "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "x" },      desc = "Add cursor and move down" },
      { "<C-k>",         "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "x" },      desc = "Add cursor and move up" },

      { "<C-Up>",        "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
      { "<C-Down>",      "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

      { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>",   mode = { "n", "i" },      desc = "Add or remove cursor" },

      { "<Leader>a",     "<Cmd>MultipleCursorsAddMatches<CR>",       mode = { "n", "x" },      desc = "Add cursors to cword" },
      { "<Leader>A",     "<Cmd>MultipleCursorsAddMatchesV<CR>",      mode = { "n", "x" },      desc = "Add cursors to cword in previous area" },

      { "<C-d>",         "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "n", "x" },      desc = "Add cursor and jump to next cword" },
      { "<Leader>D",     "<Cmd>MultipleCursorsJumpNextMatch<CR>",    mode = { "n", "x" },      desc = "Jump to next cword" },

      { "<Leader>l",     "<Cmd>MultipleCursorsLock<CR>",             mode = { "n", "x" },      desc = "Lock virtual cursors" },
    },
  },
}
