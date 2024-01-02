return {
	"nvim-neorg/neorg",
	run = ":Neorg sync-parsers", -- This is the important bit!
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.summary"] = {},
				["core.ui"] = {},
				--["core.ui.calendar"] = {},
				["core.integrations.treesitter"] = {},
				["core.journal"] = {
					config = {
						strategy = "flat",
					},
				},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							techs = "~/Documents/notes/techs",
						},
						default_workspace = "techs",
						--index = "index.norg",
					},
				},
			},
		})
		vim.wo.conceallevel = 2
		vim.wo.concealcursor = "nv"

		vim.keymap.set("n", "<leader>i", ':Neorg workspace ', {})
	end,
}
