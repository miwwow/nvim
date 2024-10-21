vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use( { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { {"nvim-lua/plenary.nvim"} } } )
	use( { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } )
	use( { "j-hui/fidget.nvim" } )
	use( {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },

			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" }
		}
	} )
	use( { "mfussenegger/nvim-jdtls" } )
	use( { "Mofiqul/vscode.nvim" } )
	use( { "nvim-tree/nvim-tree.lua" } )
	use( { "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" } )
	use( {
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-treee/nvim-web-devicons", opt = true }
	} )
	use( "nvim-lua/plenary.nvim" )
	use( {
		"lopi-py/luau-lsp.nvim",
		config = function()
			require("luau-lsp").setup( {
				platform = {
					type = "roblox",
				},
				types = {
					roblox_security_level = "PluginSecurity",
				},
				sourcemap = {
					enabled = true,
					autogenerate = true,
					rojo_project_file = "default.project.json",
				},
				plugin = {
					enabled = true,
					port = 3667,
				},

				server = {
					settings = {
						["luau-lsp"] = {
							completion = {
								imports = {
									enabled = true
								},
							},
						},
					},
				},
			} )
		end,
		requires = {
			"nvim-lua/plenary.nvim",
		},
	} )
end)
