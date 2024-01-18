vim.g.mapleader = ","

vim.keymap.set("n", "<leader>n", "<cmd>bnext<CR>", {})
vim.keymap.set("n", "<leader>b", "<cmd>bprevious<CR>", {})
vim.keymap.set("n", "<leader>d", "<cmd>bdelete<CR>", {})
vim.keymap.set("n", "<leader>D", "<cmd>bdelete!<CR>", {})
vim.keymap.set("n", "<leader>s", "<cmd>w<CR>", {})
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", {})
vim.keymap.set("n", "<leader>c", "<cmd>q<CR>", {})
--vim.keymap.set("n", "<leader>c", "<C-w>c", {})

vim.keymap.set("n", "<leader>w", "<cmd>set wrap!<CR>", {})
vim.keymap.set("n", "<leader>r", "<cmd>noh<CR>", {})
vim.keymap.set("n", "<leader>l", "<cmd>set cursorcolumn!<CR>", {})
