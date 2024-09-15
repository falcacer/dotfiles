vim.opt.cursorline = true
-- tabs and indentation
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.cmd('let g:netrw_liststyle = 3')
-- life caring shortcuts
vim.opt.clipboard:append("unnamedplus") -- use system clipboard (for linux)
-- vim.opt.clipboard:append("unnamed") -- use system clipboard (for mac)
vim.cmd("inoremap [ []<Left>")
vim.cmd("inoremap ( ()<Left>")
vim.cmd("inoremap < <><Left>")
vim.cmd("inoremap ' ''<Left>")
vim.cmd("inoremap { {}<Left>")
vim.cmd("inoremap \" \"\"<Left>")

