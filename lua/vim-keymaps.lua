vim.g.mapleader = ","

vim.keymap.set("n", "<leader>bn", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>bb", ":bprevious<CR>", {})
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {})
vim.keymap.set("n", "<leader>bf", ":bdelete!<CR>", {})
vim.keymap.set("n", "<leader>z" , ":qa<CR>", {})
vim.keymap.set("n", "<leader>s" , ":w<CR>", {})

vim.keymap.set("n", "<leader>r" , ":noh<CR>", {})
vim.keymap.set("n", "<leader>c" , ":set cursorcolumn!<CR>", {})
