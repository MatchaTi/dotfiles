require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("i", "<C-]>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })

-- Keyboard users
vim.keymap.set("n", "<C-t>", function()
  require("menu").open "default"
end, {})

-- mouse users + nvimtree users!
vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, {})

vim.api.nvim_set_keymap("n", "<leader>x", ":lua CloseSidebarAndBuffer()<CR>", { noremap = true, silent = true })

function CloseSidebarAndBuffer()
  local sidebar_active = vim.fn.bufwinnr "nvim-tree"
  if sidebar_active > 0 then
    vim.cmd "NvimTreeClose"
  end
  vim.cmd "bd"
end

map({ "n", "t" }, "<A-m>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

-- Format laravel blade files
map("n", "<leader>lf", function()
  vim.cmd ":!blade-formatter resources/views/**/*.blade.php --write"
end, { desc = "Format Laravel files" })

-- Format TailwindCSS using Rustywind
map("n", "<leader>lt", function()
  vim.cmd "!rustywind --write ."
end, { desc = "Format Tailwind" })
