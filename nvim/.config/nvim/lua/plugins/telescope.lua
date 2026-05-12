local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup({
    pickers = {
        buffers = {
            initial_mode = "normal"
        },
        bookmarks = {
            initial_mode = "normal"
        }
    },
    defaults = {
        mappings = {
            i = {
                ["<C-q>"] = actions.close
            },
            n = {
                ["q"] = actions.close
            }
        }
    }
})
