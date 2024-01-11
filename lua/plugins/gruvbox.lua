return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	name = "gruvbox",
	priority = 1000,

	config = function()
		local gruvbox = require("gruvbox")

		gruvbox.setup({
			terminal_colors = true,
			transparent_mode = true,
			overrides = {
				SignColumn = { bg = transparent },
				DapBreakpoint = { fg = "#78bcdd" },
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
