local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps( { buffer = bufnr } )
end)

require("mason").setup({})
require("mason-lspconfig").setup( {
	ensure_installed = { "rust_analyzer", "lua_ls", "csharp_ls", "luau_lsp@1.32.1" },
	handlers = {
		lsp_zero.default_setup
	}
} )

