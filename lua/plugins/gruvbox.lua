return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	name = "gruvbox",
	priority = 1000,

	config = function()
		local pallete = {
			red    = "#fb4934",
			green  = "#b8bb26",
			blue   = "#83a598",
			yellow = "#fabd2f",
			aqua   = "#689d6a",

			fg = "#ebdbb2",
			bg = "#282828",

			black_board = "#242627",
		}

		require("gruvbox").setup({
			terminal_colors = true,
			transparent_mode = false,
			overrides = {
				SignColumn = { bg = "none" },

				DiagnosticSignError = { fg = pallete.red, bg = 'none' },
				DiagnosticSignWarn = { fg = pallete.yellow, bg = 'none' },
				DiagnosticSignHint = { fg = pallete.aqua, bg = 'none' },
				DiagnosticSignInfo = { fg = pallete.blue, bg = 'none' },

				DapBreakpoint = { fg = pallete.blue, bg = 'none' },

				NeotreeNormal = { bg = pallete.black_board },
				NeotreeNormalNC = { bg = pallete.black_board },
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
