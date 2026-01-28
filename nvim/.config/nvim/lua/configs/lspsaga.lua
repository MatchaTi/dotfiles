require('lspsaga').setup({
  symbol_in_winbar = {
    enable = true,
    separator = ' > ',
    show_file = true,
    folder_level = 2,
    respect_root = true,
  },
  lightbulb = {
    enable = false
  }
})

local function set_transparent_winbar()
  vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })

  vim.api.nvim_set_hl(0, "LspSagaWinbarSep", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "LspSagaWinbarWord", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "LspSagaWinbarFile", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "LspSagaWinbarFolder", { bg = "NONE" })
end

set_transparent_winbar()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_transparent_winbar,
})
