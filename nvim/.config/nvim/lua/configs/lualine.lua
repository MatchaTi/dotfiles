require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
    },
    sections = {
        lualine_a = { { 'mode', fmt = function(str) return str:sub(1, 1) end } },
        lualine_b = {
        },
        lualine_c = { { 'filetype', icon_only = true }, { 'filename', path = 1 },
            {
                'diagnostics',
                symbols = {
                    error = ' ',
                    warn  = ' ',
                    info  = ' ',
                    hint  = ' ',
                },
                colored = true,
            }
        },
        lualine_x = {
            {
                'diff',
                symbols = { added = ' ', modified = ' ', removed = ' ',
                    untracked = ' ', renamed = ' ', stashed = ' '
                },
                colored = true,
            },
        },
        lualine_y = {},
        lualine_z = {
            { 'branch', icon = '' },
        }
    },
}

local modes = { 'normal', 'insert', 'visual', 'replace', 'command', 'terminal' }
local sections = { 'a', 'b', 'c', 'x', 'y', 'z' }

for _, mode in ipairs(modes) do
    for _, section in ipairs(sections) do
        vim.api.nvim_set_hl(0, 'lualine_' .. section .. '_' .. mode, { bg = 'NONE' })
    end
end

vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE', fg = "#ffffff" })
vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'NONE', fg = "#5c6370" })
