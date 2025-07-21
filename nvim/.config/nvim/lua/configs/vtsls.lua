require("lspconfig").vtsls.setup({
    settings = {
        complete_function_calls = true,
        tsserver_file_preferences = {
            includeCompletionsForImportStatements = true,
        },
    },
})

vim.keymap.set("n", "<leader>oi", function()
    vim.lsp.buf.code_action({
        apply = true,
        context = {
            only = { "source.organizeImports.ts" },
        },
    })
end, { desc = "Organize Imports" })

vim.keymap.set("n", "<leader>ai", function()
    vim.lsp.buf.code_action({
        apply = true,
        context = {
            only = { "source.addMissingImports.ts" },
        },
    })
end, { desc = "Add Missing Imports" })
