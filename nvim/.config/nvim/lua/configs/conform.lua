vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        print "Format on save triggered"
        require("conform").format {
            async = false,
            lsp_fallback = true,
        }
    end,
})

local function biome_or_prettier(bufnr)
    local biome_config = vim.fs.find({ "biome.json", "biome.jsonc" }, {
        upward = true,
        path = vim.api.nvim_buf_get_name(bufnr),
    })

    if #biome_config > 0 then
        return { "biome" }
    else
        return { "prettierd", "prettier", stop_after_first = true }
    end
end

require("conform").setup({
    notify_on_error = false,
    format_on_save = function()
        if vim.g.disable_autoformat then
            return
        end
        return { timeout_ms = 500, lsp_format = "fallback" }
    end,
    formatters_by_ft = {
        lua             = { "stylua" },
        python          = { "isort", "black" },
        javascript      = biome_or_prettier,
        typescript      = biome_or_prettier,
        json            = { "prettierd", "prettier", stop_after_first = true },
        astro           = { "prettier", stop_after_first = true },
        yaml            = { "yamlfmt", stop_after_first = true },
        svelte          = { "prettierd" },
        markdown        = { "prettierd" },
        -- jsx             = { "prettierd", "rustywind" },
        -- typescriptreact = { "prettierd", "rustywind" },
        jsx             = biome_or_prettier,
        typescriptreact = biome_or_prettier,
    },
})

vim.api.nvim_create_user_command("ToggleFormatting", function()
    vim.g.disable_autoformat = not vim.g.disable_autoformat
    local state = vim.g.disable_autoformat and "disabled" or "enabled"
    vim.notify("Autoformat-on-save " .. state, vim.log.levels.INFO)
end, {
    desc = "Toggle global autoformat-on-save",
})
