vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"

vim.o.autoindent = true
vim.o.bs = "indent,eol,start"
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.expandtab = false

vim.opt.listchars = {
	tab = "· ",
	trail = "·",
	extends = ">",
	precedes = "<",
}
vim.o.list = true

vim.o.completeopt = "menu,noselect"
vim.o.termguicolors = true
vim.o.title = true

vim.o.tabstop = 3
vim.o.softtabstop = 3
vim.o.shiftwidth = 3
vim.o.bg = "dark"

vim.wo.number = true

vim.g.vim_markdown_conceal = 2

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.norg"},
  command = "set conceallevel=2",
})

vim.cmd("set signcolumn=yes")

vim.diagnostic.config({
	flat = { source = "always", border = border },
	virtual_text = false,
	sign = true
})

--[=[
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
