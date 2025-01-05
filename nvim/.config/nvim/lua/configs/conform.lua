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
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
