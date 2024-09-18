vim.o.background = "dark"

require("vscode").setup({
	transparent = true,
	italic_comments = true,
	underline_links = true,
	disable_nvimtree_bg = true
})

vim.cmd.colorscheme("vscode")
