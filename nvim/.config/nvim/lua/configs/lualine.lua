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
