local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    py = { "black" },
    css = { "prettier" },
    html = { "prettier" },
    js = { "prettier" },
    jsx = { "prettier" },
    tsx = { "prettier" },
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

return options
