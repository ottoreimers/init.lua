return {
	"folke/neodev.nvim",
	opts = {},
	config = function()
		require("neodev").setup()
		local lspconfig = require("lspconfig")

		lspconfig.tsserver.setup({
			settings = {
				typescript = {
					preferences = {
						importModuleSpecifierPreference = "non-relative",
					},
				},
			},
		})

		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
					},
				},
			},
		})

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					completion = {
						callSnipper = "Replace",
					},
				},
			},
		})
	end,
}
