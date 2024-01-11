return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	name = "gruvbox",
	priority = 1000,

	config = function()
		local gruvbox = require("gruvbox")

		gruvbox.setup({
			terminal_colors = true,
			overrides = {
				SignColumn = { bg = transparent },
				DiagnosticSignError = { fg = "#cc241d", bg = transparent },
				DiagnosticSignWarn = { fg = "#d79921", bg = transparent },
				DiagnosticSignHint = { fg = "#689d6a", bg = transparent },
				DiagnosticSignInfo = { fg = "#458588", bg = transparent },
				DapBreakpoint = { fg = "#458588" },
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
