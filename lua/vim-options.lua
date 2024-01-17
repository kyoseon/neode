vim.opt.clipboard = "unnamedplus"

vim.opt.autoindent = true
vim.opt.bs = "indent,eol,start"
vim.opt.cursorline = true
--vim.opt.cursorcolumn = true
vim.opt.expandtab = false
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = {
	tab = "· ",
	trail = "·",
	extends = ">",
	precedes = "<",
}

vim.opt.fillchars = {
	eob = "·",
}

vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.shortmess:append("c")
vim.api.nvim_set_option("updatetime", 300)

vim.opt.termguicolors = true
vim.opt.title = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3

vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

--[=[
:checkhealth

 <C-A>,<C-X>: counter
 <C-N>, <C-P>: search in current file
 <C-X><C-F>: auto completion of path
 <C-W><C-F>: open file
 ]p: paste indent

 q<name>: record macro
 q: stop recording macro
 @<name>: run macro
 @@: rerun last run macro

 m<mark>
 '<mark>
 <C-E>: scroll line up
 <C-Y>: scroll line down
 [[: previous method
 ]]: next method
 %: goto bracket
 ciw, cw, cc: change

 ab: 'word' -> 'another word' (cancel execution: typing CTRL-V after typing word)
 unab 'word' (cancel ab)
--]=]
