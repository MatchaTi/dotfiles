vim.opt.termguicolors = true

require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                    or e == "warning" and " "
                    or e == "info" and " "
                    or " "
                s = s .. sym .. n .. " "
            end
            return s
        end,
        show_buffer_close_icons = true,
        show_close_icon = true,
        separator_style = "thin",
        indicator = {
            style = 'none'
        },
    },
    highlights = {
        fill = { fg = '#ffffff', bg = '#0d1117' },
    }
})
