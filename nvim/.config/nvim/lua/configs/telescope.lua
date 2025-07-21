require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<C-q>"] = require("telescope.actions").close,
            },
            n = {
                ["q"] = require("telescope.actions").close,
            },
        },
    },
})
