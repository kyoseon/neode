return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "rust", "toml" },
			highlight = {
				enabled = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enabled = true },

			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			}
		})

	end,
}
