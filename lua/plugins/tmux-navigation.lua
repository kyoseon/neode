return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		require("nvim-tmux-navigation").setup({
			disable_when_zoomed = true,
		})
		vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>", {})
		vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>", {})
		vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>", {})
		vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", {})
	end,
}
