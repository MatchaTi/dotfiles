-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-g>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, { desc = "Go to references" })
vim.keymap.set("n", "<leader>fe", function()
    require("telescope.builtin").diagnostics({
        bufnr = nil,
    })
end, { desc = "Show diagnostics (all buffers)" })

-- telescope file browser
vim.keymap.set("n", "<space>e", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<space>e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set("n", "<space>e", function()
    require("telescope").extensions.file_browser.file_browser()
end)

-- ESC
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Enter Command Mode' })

-- Command Mode
vim.keymap.set('n', ';', ':')

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>i", { noremap = true, silent = true })

-- Tabs
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { silent = true, desc = 'Next Buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { silent = true, desc = 'Previous Buffer' })
vim.keymap.set("n", "<C-\\>", "<cmd>bdelete<CR>", { noremap = true, silent = true })

-- LSPSaga
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true, desc = 'Hover Docs' })
vim.keymap.set('n', 'J', '<cmd>Lspsaga peek_definition<CR>', { silent = true, desc = 'Peek Definition' })
vim.keymap.set('n', '<C-f>', '<cmd>Lspsaga finder<CR>', { silent = true, desc = 'LSP Finder' })
vim.keymap.set('n', '<leader>rr', '<cmd>Lspsaga rename<CR>', { silent = true, desc = 'LSP Rename' })
vim.keymap.set({ 'n', 't' }, '<A-i>', '<cmd>Lspsaga term_toggle<CR>', { silent = true })
