-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {
    desc = 'Telescope find files'
})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {
    desc = 'Telescope live grep'
})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {
    desc = 'Telescope buffers'
})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
    desc = 'Telescope help tags'
})
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, {
    desc = "Go to references"
})
vim.keymap.set("n", "<leader>fe", function()
    require("telescope.builtin").diagnostics({
        bufnr = nil
    })
end, {
    desc = "Show diagnostics (all buffers)"
})

-- ESC
vim.keymap.set('i', 'jk', '<ESC>', {
    desc = 'Enter Command Mode'
})

-- Command Mode
vim.keymap.set('n', ';', ':')

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>i", { noremap = true, silent = true })

-- nvim tree
vim.keymap.set('n', '<leader>w', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle Nvim Tree' })

-- definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})

-- git
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })

-- lazygit
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { silent = true, desc = 'Open LazyGit' })

-- delete buffer
vim.keymap.set('n', '<C-\\>', ':bd<CR>', { silent = true, desc = 'Delete buffer' })
