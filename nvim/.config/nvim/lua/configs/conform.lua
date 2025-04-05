local options = {
  formatters_by_ft = {
    lua             = { "stylua" },
    py              = { "black" },
    css             = { "prettierd", "rustywind" },
    html            = { "prettierd", "rustywind" },
    js              = { "prettierd" },
    jsx             = { "prettierd", "rustywind" },
    typescriptreact = { "prettierd", "rustywind" },
    php             = { "php-cs-fixer", "rustywind" },
    blade           = { "blade-formatter", "php-cs-fixer", "prettier", "rustywind" },
    svelte          = { "prettierd", "rustywind" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 100,
    lsp_fallback = true,
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    print "Format on save triggered"
    require("conform").format {
      async = false,
      lsp_fallback = true,
    }
  end,
})

-- return options

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
    javascript      = { "prettierd", "prettier", stop_after_first = true },
    typescript      = { "prettierd", "prettier", stop_after_first = true },
    json            = { "prettierd", "prettier", stop_after_first = true },
    astro           = { "prettier", stop_after_first = true },
    yaml            = { "yamlfmt", stop_after_first = true },
    svelte          = { "prettierd" },
    markdown        = { "prettierd" },
    jsx             = { "prettierd", "rustywind" },
    typescriptreact = { "prettierd", "rustywind" },
  },
})

vim.api.nvim_create_user_command("ToggleFormatting", function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
  local state = vim.g.disable_autoformat and "disabled" or "enabled"
  vim.notify("Autoformat-on-save " .. state, vim.log.levels.INFO)
end, {
  desc = "Toggle global autoformat-on-save",
})
