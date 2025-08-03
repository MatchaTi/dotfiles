require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
    },

    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { { 'filename', path = 1 },
            {
                'diff',
                symbols = { added = ' ', modified = ' ', removed = ' ',
                    untracked = ' ', renamed = ' ', stashed = ' '
                },
                colored = true
            }
            , 'diagnostics'
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}

-- local modes = { 'normal', 'insert', 'visual', 'replace', 'command', 'terminal' }
-- local sections = { 'a', 'b', 'c', 'x', 'y', 'z' }

-- for _, mode in ipairs(modes) do
--     for _, section in ipairs(sections) do
--         vim.api.nvim_set_hl(0, 'lualine_' .. section .. '_' .. mode, { bg = 'NONE' })
--     end
-- end
--
-- vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE', fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'NONE', fg = "#5c6370" })
