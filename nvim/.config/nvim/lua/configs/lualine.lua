-- local theme = {
--     normal = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
--     insert = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
--     visual = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
--     replace = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
--     command = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
--     inactive = {
--         a = { bg = "None" },
--         b = { bg = "None" },
--         c = { bg = "None" },
--         x = { bg = "None" },
--         y = { bg = "None" },
--         z = { bg = "None" },
--     },
-- }
local function vimIcon()
    return [[]]
end

require('lualine').setup {

    options = {
        icons_enabled = true,
        theme = theme,
        -- component_separators = { left = '|', right = '|' },
        -- section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        globalstatus = true,
    },

    sections = {
        lualine_a = { { vimIcon }, 'mode' },
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
--
-- for _, mode in ipairs(modes) do
--     for _, section in ipairs(sections) do
--         vim.api.nvim_set_hl(0, 'lualine_' .. section .. '_' .. mode, { bg = 'NONE' })
--     end
-- end
--
-- vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE' })
-- vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'NONE' })
