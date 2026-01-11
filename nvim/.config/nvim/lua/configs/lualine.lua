local custom_theme = require('lualine.themes.auto')

local function make_transparent(mode_sections)
  if mode_sections.c then mode_sections.c.bg = 'NONE' end
  if mode_sections.x then mode_sections.x.bg = 'NONE' end
end

for _, mode in pairs(custom_theme) do
  make_transparent(mode)
end

require('lualine').setup {
  options = {
    theme = custom_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
    lualine_b = { { 'branch', separator = { left = '', right = '' }, right_padding = 2 } },
    lualine_c = {
      'filename',
      {
        'diff',
        colored = true,
      },
    },
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ' } },
    },
    lualine_y = { { 'filetype', separator = { left = '', right = '' }, left_padding = 2 } },
    lualine_z = { { 'progress', separator = { left = '', right = '' }, left_padding = 2 } },
  },
}

vim.cmd([[hi StatusLine guibg=NONE ctermbg=NONE]])
vim.cmd([[hi StatusLineNC guibg=NONE ctermbg=NONE]])
