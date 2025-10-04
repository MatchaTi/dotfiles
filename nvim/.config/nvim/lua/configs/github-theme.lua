require('github-theme').setup({
    options = {
        transparent = true,
        terminal_colors = true,
        hide_nc_statusline = true,
    }
})

vim.cmd('colorscheme github_dark')
