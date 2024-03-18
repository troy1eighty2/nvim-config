require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd", "cssls", "html", "quick_lint_js"}
})

require'lspconfig'.lua_ls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.quick_lint_js.setup{}






