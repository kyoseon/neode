vim.g.mapleader = ","

vim.keymap.set("n", "<leader>1", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>2", ":bprevious<CR>", {})
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", {})
vim.keymap.set("n", "<leader><C-q>", ":bdelete!<CR>", {})
vim.keymap.set("n", "<leader>Q", ":qa<CR>", {})
vim.keymap.set("n", "<leader>s", ":w<CR>", {})

vim.keymap.set("n", "<leader>r", ":noh<CR>", {})
vim.keymap.set("n", "<leader>c", ":set cursorcolumn!<CR>", {})
