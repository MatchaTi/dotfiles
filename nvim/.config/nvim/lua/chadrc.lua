-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

-- disable default diagnostic
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
})


vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

M.base46 = {
	theme = "kuro",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
	load_on_startup = true,
}

M.ui = {
	statusline = {
		theme = "minimal",
		separator_style = "block",
	},
	cmp = {
		format_colors = {
			tailwind = true,
		},
		icons_left = true,
		style = "atom"
	},
	telescope = {
		style = "bordered"
	}
}

M.term = {
	winopts = { number = false, relativenumber = true },
	sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
	float = {
		relative = "editor",
		row = 0,
		col = 0,
		width = 1,
		height = 0.9,
		border = "none",
	},
}

return M
