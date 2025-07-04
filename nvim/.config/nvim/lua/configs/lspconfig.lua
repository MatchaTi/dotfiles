-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "lua_ls", "clangd", "pylsp", "intelephense" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.ts_ls.setup {
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
        languages = { "javascript", "typescript", "vue" },
      },
    },
  },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
}

lspconfig.emmet_language_server.setup({
  filetypes = { "css", "eruby", "html", "javascript", "less", "sass", "scss", "pug", "javascriptreact", "typescriptreact", "blade" },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})


-- require 'lspconfig'.tailwindcss.setup {
--   cmd = { "tailwindcss-language-server", "--stdio" },
--   filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs", "html", "htmlangular", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte", "templ" },
--   classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
--   includeLanguages = {
--     eelixir = "html-eex",
--     eruby = "erb",
--     htmlangular = "html",
--     templ = "html"
--
--   },
--   lint = {
--     cssConflict = "warning",
--     invalidApply = "error",
--     invalidConfigPath = "error",
--     invalidScreen = "error",
--     invalidTailwindDirective = "error",
--     invalidVariant = "error",
--     recommendedVariantOrder = "warning"
--   },
--   validate = true,
--   root_dir = require('lspconfig/util').root_pattern("tailwind.config.js", "tailwind.config.cjs", "tailwind.config.ts", "tailwind.config.tsx", "globals.css"),
-- }

lspconfig.eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

lspconfig.java_language_server.setup {
  default_config = {
    filetypes = { 'java' },
    root_dir = lspconfig.util.root_pattern('build.gradle', 'build.gradle.kts', 'pom.xml', '.git'),
    settings = {},
  },
  docs = {
    description = [[
https://github.com/georgewfraser/java-language-server

Java language server

Point `cmd` to `lang_server_linux.sh` or the equivalent script for macOS/Windows provided by java-language-server
]],
  },
}

lspconfig.jdtls.setup {
  cmd = { "jdtls" },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "java" },
  root_dir = lspconfig.util.root_pattern("pom.xml", "gradle.build", ".git"),
}

lspconfig.intelephense.setup {
  intelephense = {
    filetypes = { "php", "blade", "php_only" },
    settings = {
      intelephense = {
        filetypes = { "php", "blade", "php_only" },
        files = {
          associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
          maxSize = 5000000,
        },
      },
    }, }
}

lspconfig.svelte.setup {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  root_dir = lspconfig.util.root_pattern("package.json"),
  settings = {
    svelte = {
      plugin = {
        html = {
          completions = {
            enable = true,
            emmet = true,
          },
        },
      },
    },
  },
}
