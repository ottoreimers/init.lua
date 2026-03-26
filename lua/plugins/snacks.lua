return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	keys = {
		{ "<leader> ", function() Snacks.picker.files({ hidden = true }) end, desc = "Find files" },
		{ "<leader>sg", function() Snacks.picker.grep({ hidden = true }) end, desc = "Live grep" },
	},
	opts = {
		picker = {
			actions = {
				sidekick_send = function(...)
					return require("sidekick.cli.picker.snacks").send(...)
				end,
			},
			win = {
				input = {
					keys = {
						["<a-a>"] = {
							"sidekick_send",
							mode = { "n", "i" },
						},
					},
				},
			},
		},
		-- dashboard = {
		-- 	enabled = true,
		-- 	sections = {
		-- 		{ section = "header" },
		-- 		{ section = "keys", gap = 1, padding = 1 },
		-- 		{ pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
		-- 		{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
		-- 		{
		-- 			pane = 2,
		-- 			icon = " ",
		-- 			title = "Git Status",
		-- 			section = "terminal",
		-- 			enabled = function()
		-- 				return Snacks.git.get_root() ~= nil
		-- 			end,
		-- 			cmd = "git status --short --branch --renames",
		-- 			height = 5,
		-- 			padding = 1,
		-- 			ttl = 5 * 60,
		-- 			indent = 3,
		-- 		},
		-- 		{ section = "startup" },
		-- 	},
		-- },
		indent = { enabled = true },
	},
}
