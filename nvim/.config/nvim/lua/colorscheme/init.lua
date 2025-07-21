local M = {}

function M.setup()
    local colors = {
        bg     = "#1e293b", -- latar belakang (tidak ada di gambar, tetap hitam)
        fg     = "#64748b", -- editor.foreground
        red    = "#f0abfc", -- variables, properties
        green  = "#d19a66", -- keywords
        yellow = "#ff0000", -- numbers
        blue   = "#bb9af7", -- classes, constants
        purple = "#cbd5e1", -- functions, methods
        cyan   = "#d19a66", -- strings
        gray   = "#ffffff", -- comments (putih transparan)
    }

    local highlights = {
        Normal = { fg = colors.fg, bg = colors.bg },
        Comment = { fg = colors.gray, italic = true },
        Error = { fg = colors.red, bg = colors.bg, bold = true },
        Warning = { fg = colors.yellow, bg = colors.bg, bold = true },
        String = { fg = colors.green },
        Function = { fg = colors.blue, bold = true },
        Visual = { bg = colors.cyan, fg = colors.bg },
        StatusLine = { fg = colors.fg, bg = colors.bg, bold = true },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
