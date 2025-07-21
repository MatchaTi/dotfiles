vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- Accept Copilot suggestion
vim.keymap.set("i", "<C-e>", function()
    vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })

-- Enable Copilot
vim.keymap.set("n", "<leader>ce", function()
    vim.cmd "Copilot enable"
    print("Copilot enabled")
end, { desc = "Enable Copilot" })

-- Disable Copilot
vim.keymap.set("n", "<leader>cd", function()
    vim.cmd "Copilot disable"
    print("Copilot disabled")
end, { desc = "Disable Copilot" })
