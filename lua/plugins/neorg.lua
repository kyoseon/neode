return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers", -- This is the important bit!
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "basic",
					},
				},
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
							racing = "~/Documents/notes/racing",
						},
						default_workspace = "techs",
						index = "index.norg",
					},
				},
			},
		})
		vim.wo.concealcursor = "nv"

		vim.keymap.set("n", "<leader>oi", ':Neorg workspace ', {})
		vim.keymap.set("n", "<leader>ot", '<cmd>Neorg toggle-concealer<CR>', {})

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			pattern = { "*.norg" },
			command = "set conceallevel=2",
		})
	end,
}
