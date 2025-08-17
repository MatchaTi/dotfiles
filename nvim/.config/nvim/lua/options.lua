vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nowrap")
vim.opt.mouse = ""

local augroup = vim.api.nvim_create_augroup('NvimTreeAutoClose', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
    group = augroup,
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == 'NvimTree' then
            vim.schedule(function()
                vim.cmd('quit')
            end)
        end
    end,
})
