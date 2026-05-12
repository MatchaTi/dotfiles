require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "lua-language-server",
        "css-lsp",
        "emmet-ls",
        "eslint_d",
        "gopls",
        "pylsp",
        "vtsls",
        "black",
        "prettierd",
        "biome",
        "uv"
    },
    auto_update = true,
    run_on_start = true
})

vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" }
}

vim.lsp.enable("lua_ls")
