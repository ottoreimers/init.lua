return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.files").setup({
            vim.keymap.set("n", "-", ":lua MiniFiles.open()<CR>", {})
        })
	end,
}
