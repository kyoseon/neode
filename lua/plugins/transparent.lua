return {
	"xiyaowong/transparent.nvim",

	config = function()
		local transparent = require("transparent")
		transparent.setup({
			groups = { 'SignColumn' },
			extra_groups = {},
			exclude_groups = { 'CursorLine', 'CursorLineNr' },
		})
		vim.cmd(":TransparentEnable")

		transparent.clear_prefix("Neotree")
	end
}
