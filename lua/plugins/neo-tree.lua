return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>ff", "<cmd>Neotree filesystem<CR>", {})
		vim.keymap.set("n", "<leader>fg", "<cmd>Neotree float git_status<CR>", {})
		vim.keymap.set("n", "<leader>fb", "<cmd>Neotree float buffers<CR>", {})
		vim.keymap.set("n", "<leader>fc", "<cmd>Neotree close<CR>", {})

		require("neo-tree").setup({
			source_selector = {
				win_bar = false,
				statusline = false,
			},
			close_if_last_window = false,
			popup_border_style = "rounded",
			enable_git_status = true,
		})
	end,
}
