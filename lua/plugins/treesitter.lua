return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "javascript", "rust" },
			highlight = { enabled = true },
			indent = { enabled = true },
			vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, {})
		})
	end,
}
