vim.g.mapleader = ","

vim.keymap.set('n', '<leader>q', ':q<CR>', {})
vim.keymap.set('n', '<leader>Q', ':q!<CR>', {})
vim.keymap.set('n', '<leader>s', ':w<CR>', {})
vim.keymap.set('n', '<leader>n', ':e#<CR>', {})

vim.keymap.set('n', '<C-r>', ':noh<CR>', {})
vim.keymap.set('n', '<leader>c', ':set cursorcolumn!<CR>', {})
vim.keymap.set('n', '<TAB>', '<C-w>l', {})
vim.keymap.set('n', '<leader><TAB>', '<C-w>h', {})
